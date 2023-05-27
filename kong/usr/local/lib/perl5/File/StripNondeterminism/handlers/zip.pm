#
# Copyright 2014 Andrew Ayer
#
# This file is part of strip-nondeterminism.
#
# strip-nondeterminism is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# strip-nondeterminism is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with strip-nondeterminism.  If not, see <http://www.gnu.org/licenses/>.
#
package File::StripNondeterminism::handlers::zip;

use strict;
use warnings;

use File::Temp;
use File::StripNondeterminism;
use Archive::Zip qw/:CONSTANTS :ERROR_CODES/;
use Sub::Override;

# A magic number from Archive::Zip for the earliest timestamp that
# can be represented by a Zip file.  From the Archive::Zip source:
# "Note, this isn't exactly UTC 1980, it's 1980 + 12 hours and 1
# minute so that nothing timezoney can muck us up."
use constant SAFE_EPOCH => 315576060;

# Extract and return the first $nbytes of $member (an Archive::Zip::Member)
sub peek_member($$) {
	my ($member, $nbytes) = @_;
	my $original_size = $member->compressedSize();
	my $old_compression_method
	  = $member->desiredCompressionMethod(COMPRESSION_STORED);
	$member->rewindData() == AZ_OK or die "failed to rewind ZIP member";
	my ($buffer, $status) = $member->readChunk($nbytes);
	die "failed to read ZIP member"
	  if $status != AZ_OK && $status != AZ_STREAM_END;
	$member->endRead();
	$member->desiredCompressionMethod($old_compression_method);
	$member->{'compressedSize'} = $original_size
	  ; # Work around https://github.com/redhotpenguin/perl-Archive-Zip/issues/11
	return $$buffer;
}

# Normalize the contents of $member (an Archive::Zip::Member) with $normalizer
sub normalize_member($$) {
	my ($member, $normalizer) = @_;

	# Extract the member to a temporary file.
	my $tempdir = File::Temp->newdir();
	my $filename = "$tempdir/member";
	my $original_size = $member->compressedSize();
	$member->extractToFileNamed($filename);
	chmod(0600, $filename);
	$member->{'compressedSize'} = $original_size
	  ; # Work around https://github.com/redhotpenguin/perl-Archive-Zip/issues/11

	# Normalize the temporary file.
	if ($normalizer->($filename)) {
		# Normalizer modified the temporary file.
		# Replace the member's contents with the temporary file's contents.
		open(my $fh, '<', $filename) or die "Unable to open $filename: $!";
		$member->contents(
			do { local $/; <$fh> }
		);
	}

	unlink($filename);

	return 1;
}

sub unixtime_to_winnt($) {
	my $unixtime = shift || 0;

	# WinNT epoch is 01-Jan-1601 00:00:00 UTC
	# diff to unix time: `date -u -d "01-Jan-1601 00:00:00 UTC" +%s`
	my $secondsdiff = 11644473600;

	return $unixtime + $secondsdiff;
}

sub normalize_extra_fields($$) {
	# See http://sources.debian.net/src/zip/3.0-6/proginfo/extrafld.txt for extra field documentation
	# WARNING: some fields have a different format depending on the header type
	my ($canonical_time, $field) = @_;

	my $result = "";
	my $pos = 0;
	my ($id, $len);

	# field format: 2 bytes id, 2 bytes data len, n bytes data
	while (($id, $len) = unpack("vv", substr($field, $pos))) {
		if ($id == 0x5455) {
			# extended timestamp found.
			# first byte of data contains flags.
			$result .= substr($field, $pos, 5);
			# len determines how many timestamps this field contains
			# this works for both the central header and local header version
			for (my $i = 1; $i < $len; $i += 4) {
				$result .= pack("V", $canonical_time);
			}
		} elsif ($id == 0x000a) {
			# first 4 bytes are reserved
			$result .= substr($field, $pos, 2+2+4);
			my ($tag, $tagsize) = (0, 0);
			for (my $i = 2+2+4; $i < $len; $i += $tagsize) {
				($tag, $tagsize) = unpack("vv", substr($field, $pos + $i));
				$result .= substr($field, $pos + $i, 2+2);
				if ($tag == 0x0001 && $tagsize == 24) {
					# timestamp in 1/10th microseconds
					my $timestamp = unixtime_to_winnt($File::StripNondeterminism::canonical_time) * 10**7;
					# mtime
					$result .= pack("VV", $timestamp % (2**32), $timestamp / (2**32));
					# atime
					$result .= pack("VV", $timestamp % (2**32), $timestamp / (2**32));
					# ctime
					$result .= pack("VV", $timestamp % (2**32), $timestamp / (2**32));
				} else {
					$result .= substr($field, $pos + $i, $tagsize)
				}
			}
		} elsif ($id == 0x7875) { # Info-ZIP New Unix Extra Field
			$result .= substr($field, $pos, 4);
			#  Version       1 byte      version of this extra field, currently 1
			#  UIDSize       1 byte      Size of UID field
			#  UID           Variable    UID for this entry
			#  GIDSize       1 byte      Size of GID field
			#  GID           Variable    GID for this entry
			# (Same format for both central header and local header)
			if (ord(substr($field, $pos + 4, 1)) == 1) {
				my $uid_len = ord(substr($field, $pos + 5, 1));
				my $gid_len = ord(substr($field, $pos + 6 + $uid_len, 1));
				$result
				  .= pack("CCx${uid_len}Cx${gid_len}", 1, $uid_len, $gid_len);
			} else {
				$result .= substr($field, $pos + 4, $len);
			}
		} else {
			# Catch invalid field lengths by calculating whether we would
			# read beyond the end of the file.
			if (!defined($len)) {
				warn "strip-nondeterminism: unknown extra field length";
				return;
			}
			if ($pos + $len >= length($field)) {
				warn "strip-nondeterminism: invalid extra field length ($len)";
				return;
			}
			# use the current extra field unmodified.
			$result .= substr($field, $pos, $len+4);
		}
		$pos += $len + 4;
	}

	return $result;
}

sub try(&$) {
	my ($sub, $errors) = @_;
	@$errors = ();
	my $old_error_handler
	  = Archive::Zip::setErrorHandler(sub { push @$errors, @_ });
	my $res = $sub->();
	Archive::Zip::setErrorHandler($old_error_handler);
	return $res;
}

sub normalize {
	my ($zip_filename, %options) = @_;
	my $filename_cmp = $options{filename_cmp} || sub { $a cmp $b };
	my $zip = Archive::Zip->new();
	my @errors;
	if (try(sub { $zip->read($zip_filename) }, \@errors) != AZ_OK) {
		if (grep { /zip64 not supported/ } @errors) {
			# Ignore zip64 files, which aren't supported by Archive::Zip.
			# Ignoring unsupported files, instead of erroring out, is
			# consistent with the rest of strip-nondeterminism's behavior,
			# but warn about it in case someone is confused why a .zip
			# file is left with nondeterminism in it.  (Hopefully this won't
			# happen much since zip64 files are very rare.)
			warn "strip-nondeterminism: $zip_filename: ignoring zip64 file\n";
			return 0;
		} else {
			die "Reading ZIP archive failed: " . join("\n", @errors);
		}
	}
	if (exists($options{archive_filter})
		and not($options{archive_filter}->($zip))) {
		return 0;
	}
	my $canonical_time = $File::StripNondeterminism::canonical_time;
	$canonical_time = SAFE_EPOCH
	  if not defined $canonical_time or $canonical_time < SAFE_EPOCH;
	my @filenames = sort $filename_cmp $zip->memberNames();
	for my $filename (@filenames) {
		my $member = $zip->removeMember($filename);
		if ($member->isEncrypted()) {
			warn "strip-nondeterminism: $zip_filename: ignoring encrypted zip file\n";
			return 0;
		}
		$zip->addMember($member);
		# member_normalizer returns the timestamp to use.
		my $timestamp = exists $options{member_normalizer}
		  ? $options{member_normalizer}->($member, $canonical_time)
		  : $canonical_time;
		$member->setLastModFileDateTimeFromUnix($timestamp);
		if ($member->fileAttributeFormat() == FA_UNIX) {
			$member->unixFileAttributes(
				($member->unixFileAttributes() & oct(100))
				? oct(755)
				: oct(644));
		}
	}
	my $old_perms = (stat($zip_filename))[2] & oct(7777);

	# Archive::Zip::Member does not handle the localExtraField field (used for
	# uid/gids) correctly or consistently.
	#
	# It does not populate localExtraField in the class upon initial reading of
	# the file whilst it does for cdExtraField. One can workaround this
	# manually with calls to _seekToLocalHeader and _readLocalFileHeader but
	# upon writing to a file back to the disk Archive::Zip will ignore any
	# stored value of localExtraField (!) and reload it again from the existing
	# file handle in/around rewindData.
	#
	# We therefore override the accessor methods of the Member class to
	# ensure that normalised values are used in this final save.
	#
	# <https://salsa.debian.org/reproducible-builds/strip-nondeterminism/issues/4>
	my @overrides = map {
		my $full_name = "Archive::Zip::Member::$_";
		my $orig_sub = \&$full_name;
		Sub::Override->new(
			$full_name => sub {
				my $result = $orig_sub->(@_);
				return defined($result) ?
					normalize_extra_fields($canonical_time, $result) : $result;
			}
		);
	} qw(cdExtraField localExtraField);

	return 0 unless $zip->overwrite() == AZ_OK;
	$_->restore for @overrides;
	chmod($old_perms, $zip_filename);
	return 1;
}

1;

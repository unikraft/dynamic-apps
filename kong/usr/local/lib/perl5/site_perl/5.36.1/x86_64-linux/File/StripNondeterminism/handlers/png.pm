#
# Copyright 2015 Chris Lamb <lamby@debian.org>
# Copyright 2015 Andrew Ayer <agwa@andrewayer.name>
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
package File::StripNondeterminism::handlers::png;

use strict;
use warnings;

use Archive::Zip ();
use File::Temp;
use File::StripNondeterminism;
use File::StripNondeterminism::Common qw(copy_data);
use File::Basename qw/dirname/;
use POSIX qw/strftime/;
use List::Util qw/min/;
use Time::Local qw/timegm/;

sub crc($) {
	my ($data) = @_;
	return Archive::Zip::computeCRC32($data);
}

sub chunk($$) {
	my ($type, $data) = @_;
	return pack('Na4a*N', length($data), $type, $data, crc($type . $data));
}

sub time_chunk($) {
	my ($seconds) = @_;
	my ($sec, $min, $hour, $mday, $mon, $year) = gmtime($seconds);
	return chunk('tIME',
		pack('nCCCCC', 1900+$year, $mon+1, $mday, $hour, $min, $sec));
}

sub parse_time_chunk($) {
	my ($data) = @_;
	my ($year, $mon, $mday, $hour, $min, $sec) = unpack('nCCCCC', $data);
	return timegm($sec, $min, $hour, $mday, $mon, $year);
}

sub text_chunk($$) {
	my ($keyword, $data) = @_;
	return chunk('tEXt', pack('Z*a*', $keyword, $data));
}

sub normalize {
	my ($filename) = @_;

	my $tempfile = File::Temp->new(DIR => dirname($filename));

	open(my $fh, '<', $filename) or die "$filename: open: $!";

	if (_normalize($filename, $fh, $tempfile)) {
		$tempfile->close;
		copy_data($tempfile->filename, $filename)
		  or die "$filename: unable to overwrite: copy_data: $!";
	}

	close $fh;

	return 1;
}

sub _normalize {
	my ($filename, $fh, $tempfile) = @_;

	my $canonical_time = $File::StripNondeterminism::canonical_time;

	my $buf;
	my $modified = 0;
	my $bytes_read;

	read($fh, my $magic, 8);
	$magic eq "\x89PNG\r\n\x1a\n"
	  or die "$filename: does not appear to be a PNG";

	print $tempfile $magic;

	while (read($fh, my $header, 8) == 8) {
		my ($len, $type) = unpack('Na4', $header);

		# Include the trailing CRC when reading
		$len += 4;

		# We cannot trust the value of $len so we cannot simply read
		# that many bytes in memory. Therefore rely on a sane value
		# for a "header" and hope that matches everything.
		if ($len < 4096) {
			my $bytes_read = read($fh, my $data, $len);

			if ($bytes_read != $len) {
				warn "$filename: invalid length in '$type' header";
				return 0;
			}

			if ($type eq "tIME") {
				$modified = 1;
				next if not defined $canonical_time;
				my $timestamp = $canonical_time;
				$timestamp = min($timestamp, parse_time_chunk($data))
					if $File::StripNondeterminism::clamp_time;
				print $tempfile time_chunk($timestamp);
				next;
			} elsif (($type =~ /[tiz]EXt/)
				&& ($data =~ /^(date:[^\0]+|Creation Time)\0/)) {
				print $tempfile text_chunk(
					$1,
					strftime(
						"%Y-%m-%dT%H:%M:%S-00:00",gmtime($canonical_time))
				) if defined($canonical_time);
				$modified = 1;
				next;
			}

			print $tempfile $header . $data;
		} else {
			print $tempfile $header;

			while ($len > 0) {
				# Can't trust $len so read data part in chunks
				$bytes_read = read($fh, $buf, min($len, 4096));

				if ($bytes_read == 0) {
					warn "$filename: invalid length in '$type' header";
					return 0;
				}

				print $tempfile $buf;
				$len -= $bytes_read;
			}
			defined($bytes_read) or die "$filename: read failed: $!";
		}

		# Stop processing immediately in case there's garbage after the
		# PNG datastream. (https://bugs.debian.org/802057)
		last if $type eq 'IEND';
	}

	# Copy through trailing garbage.  Conformant PNG files don't have trailing
	# garbage (see http://www.w3.org/TR/PNG/#15FileConformance item c), however
	# in the interest of strip-nondeterminism being as transparent as possible,
	# we preserve the garbage.(#802057)
	my $garbage = 0;
	while ($bytes_read = read($fh, $buf, 4096)) {
		print $tempfile $buf;
		$garbage += $bytes_read;
	}
	defined($bytes_read) or die "$filename: read failed: $!";
	warn "$filename: $garbage bytes of garbage after IEND chunk"
	  if $garbage > 0;

	return $modified;
}

1;

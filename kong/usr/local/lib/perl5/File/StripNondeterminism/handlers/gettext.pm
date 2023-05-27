#
# Copyright 2016 Reiner Herrmann <reiner@reiner-h.de>
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
package File::StripNondeterminism::handlers::gettext;

use Time::Piece;
use POSIX qw(strftime);

use strict;
use warnings;

use File::StripNondeterminism;

sub read_file($) {
	my $filename = shift;

	local $/ = undef;
	open(my $fh, '<', $filename)
	  or die "Can't open file $filename for reading: $!";
	binmode($fh);
	my $buf = <$fh>;
	close($fh);

	return $buf;
}

sub normalize {
	my ($mo_filename, %options) = @_;

	my $norm_time = $File::StripNondeterminism::canonical_time // 0;
	my $fmt;

	my $buf = read_file($mo_filename);

	my $magic = unpack("V", substr($buf, 0*4, 4));
	if ($magic == 0x950412DE) {
		# little endian
		$fmt = "V";
	} elsif ($magic == 0xDE120495) {
		# big endian
		$fmt = "N";
	} else {
		# unknown format
		return 0;
	}

	my ($revision, $nstrings, $orig_to, $trans_to)
	  = unpack($fmt x 4, substr($buf, 1*4, 4*4));
	my $major = int($revision / 256);
	my $minor = int($revision % 256);
	return 0 if $major > 1;

	my $modified = 0;
	for (my $i=0; $i < $nstrings; $i++) {
		my $len = unpack($fmt, substr($buf, $orig_to + $i*8, 4));
		next if $len > 0;

		my $offset = unpack($fmt, substr($buf, $orig_to + $i*8 + 4, 4));
		my $trans_len = unpack($fmt, substr($buf, $trans_to + $i*8));
		my $trans_offset = unpack($fmt, substr($buf, $trans_to + $i*8 + 4));
		my $trans_msg = substr($buf, $trans_offset, $trans_len);
		next unless $trans_msg =~ m/^POT-Creation-Date: (.*)/m;

		my $pot_date = $1;
		my $time;
		eval {$time = Time::Piece->strptime($pot_date, "%Y-%m-%d %H:%M%z");};
		next if $@;
		next if $time <= $norm_time;

		my $new_time = strftime("%Y-%m-%d %H:%M%z", gmtime($norm_time));
		$trans_msg
		  =~ s/\QPOT-Creation-Date: $pot_date\E/POT-Creation-Date: $new_time/;
		next if length($trans_msg) != $trans_len;

		$buf
		  = substr($buf, 0, $trans_offset)
		  . $trans_msg
		  . substr($buf, $trans_offset + $trans_len);
		$modified = 1;
	}

	if ($modified) {
		open(my $fh, '>', $mo_filename)
		  or die "Can't open file $mo_filename for writing: $!";
		binmode($fh);
		print $fh $buf;
		close($fh);
	}

	return $modified;
}

1;

# Copyright © 2014 Jérémy Bobbio <lunar@debian.org>
# Copyright © 2014 Niko Tyni <ntyni@debian.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Some code borrowed from ArFile
# Copyright (C) 2007    Stefano Zacchiroli  <zack@debian.org>
# Copyright (C) 2007    Filippo Giunchedi   <filippo@debian.org>

package File::StripNondeterminism::handlers::ar;

use strict;
use warnings;

use Fcntl q/SEEK_SET/;

use File::StripNondeterminism;

sub normalize {
	my ($file) = @_;

	my $GLOBAL_HEADER = "!<arch>\n";
	my $GLOBAL_HEADER_LENGTH = length $GLOBAL_HEADER;

	my $FILE_HEADER_LENGTH = 60;
	my $FILE_MAGIC = "`\n";

	my $buf;

	open(my $fh, '+<', $file)
	  or die("failed to open $file for read+write: $!");

	read $fh, $buf, $GLOBAL_HEADER_LENGTH;
	return 0 if $buf ne $GLOBAL_HEADER;

	while (1) {
		my $file_header_start = tell $fh;
		my $count = read $fh, $buf, $FILE_HEADER_LENGTH;
		die "reading $file failed: $!" if !defined $count;
		last if $count == 0;

		# http://en.wikipedia.org/wiki/Ar_(Unix)
		#from   to     Name                      Format
		#0      15     File name                 ASCII
		#16     27     File modification date    Decimal
		#28     33     Owner ID                  Decimal
		#34     39     Group ID                  Decimal
		#40     47     File mode                 Octal
		#48     57     File size in bytes        Decimal
		#58     59     File magic                \140\012

		die "Incorrect header length"
		  if length $buf != $FILE_HEADER_LENGTH;
		die "Incorrect file magic"
		  if substr($buf, 58, length($FILE_MAGIC)) ne $FILE_MAGIC;

		# $member_id is the member's filename if it's short
		# enough to fit in 16 characters. Otherwise it's a
		# "/number" index in the table of long member names '//'
		# (SysV/GNU), or a #1/ prefixed length (BSD)
		my $member_id = substr($buf, 0, 16);

		my $file_mode = oct(substr($buf, 40, 8));
		my $file_size = substr($buf, 48, 10);

		die "Incorrect file size"
		  if $file_size < 1;

		# Don't touch the System V/GNU table of long filenames
		# '//', it's a different format and already
		# deterministic.
		if (substr($member_id, 0, 3) eq "// ") {
			goto NEXT_MEMBER;
		}

		seek $fh, $file_header_start + 16, SEEK_SET;

		# mtime
		if ($File::StripNondeterminism::verbose
		    && $File::StripNondeterminism::canonical_time
		    && substr($member_id, 0, 2) eq "/ ") {
		    print STDERR "Setting symbols table's mtime in $file to: "
			. gmtime($File::StripNondeterminism::canonical_time)
			. ". GNU ar cannot do this.\n";
		}
		syswrite $fh,
		  sprintf("%-12d", $File::StripNondeterminism::canonical_time // 0);
		# owner
		syswrite $fh, sprintf("%-6d", 0);
		# group
		syswrite $fh, sprintf("%-6d", 0);
		# file mode

		# Don't touch the pseudo-"filemode" of the symbols table '/ '
		if (substr($member_id, 0, 2) eq "/ ") {
			goto NEXT_MEMBER;
		}
		syswrite $fh,
		  sprintf("%-8o", ($file_mode & oct(100)) ? oct(755) : oct(644));

	NEXT_MEMBER:
		my $padding = $file_size % 2;
		seek $fh,
		  $file_header_start + $FILE_HEADER_LENGTH + $file_size + $padding,
		  SEEK_SET;

	}

	return 1;
}

1;

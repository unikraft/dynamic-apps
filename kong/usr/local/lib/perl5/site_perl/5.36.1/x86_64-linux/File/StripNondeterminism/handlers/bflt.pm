#
# Copyright 2016 Evgueni Souleimanov
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
package File::StripNondeterminism::handlers::bflt;

use strict;
use warnings;

use File::StripNondeterminism;
use Fcntl q/SEEK_SET/;

use constant bFLT => 0x62464C54;
use constant FLAT_HDRLEN => 64;

# Heuristic values
use constant MAX_OFFSET => 0xFFFFFFF;
use constant MAX_STACK_SIZE => 0xFFFFFF;
use constant MAX_COUNT => 0xFFFFFF;
use constant RESERVED_FLAGS => 0xFFFFFFC0;

# From elf2flt flat.h
# /*
#  * To make everything easier to port and manage cross platform
#  * development,  all fields are in network byte order.
#  */
#
# struct flat_hdr {
#     char magic[4];
#     uint32_t rev;          /* version (as above) */
#     uint32_t entry;        /* Offset of first executable instruction
#                               with text segment from beginning of file */
#     uint32_t data_start;   /* Offset of data segment from beginning of
#                               file */
#     uint32_t data_end;     /* Offset of end of data segment from beginning
#                               of file */
#     uint32_t bss_end;      /* Offset of end of bss segment from beginning
#                               of file */
#
#     /* (It is assumed that data_end through bss_end forms the bss segment.) */
#
#     uint32_t stack_size;   /* Size of stack, in bytes */
#     uint32_t reloc_start;  /* Offset of relocation records from beginning
#                               of file */
#     uint32_t reloc_count;  /* Number of relocation records */
#     uint32_t flags;
#     uint32_t build_date;   /* When the program/library was built */
#     uint32_t filler[5];    /* Reservered, set to zero */
# };

sub is_bflt_header {
	my ($hdr) = @_;

	my ($f_magic, $f_rev, $f_entry, $f_data_start,
		$f_data_end, $f_bss_end, $f_stack_size, $f_reloc_start,
		$f_reloc_count, $f_flags, $f_build_date, $filler_11,
		$filler_12, $filler_13, $filler_14, $filler_15) = unpack('NNNNNNNNNNNNNNNN', $hdr);

	return 0 unless ($f_magic == bFLT);

	return 0 unless ($f_rev == 4);

	return 0 unless ($f_entry < MAX_OFFSET && $f_data_start < MAX_OFFSET
			&& $f_data_end < MAX_OFFSET && $f_bss_end < MAX_OFFSET);

	return 0 unless ($f_stack_size < MAX_STACK_SIZE);

	return 0 unless ($f_reloc_start < MAX_OFFSET && $f_reloc_count < MAX_COUNT);

	return 0 unless (($f_flags & RESERVED_FLAGS) == 0);

	return 0 unless ($filler_11 == 0 && $filler_12 == 0
		&& $filler_13 == 0 && $filler_14 == 0 && $filler_15 == 0);

	return 1;
}

sub is_bflt_fh {
	my ($fh) = @_;
	my $hdr;

	binmode($fh);

	my $bytes_read = sysread($fh, $hdr, FLAT_HDRLEN);
	return 0 unless $bytes_read == FLAT_HDRLEN;

	return is_bflt_header($hdr);
}

sub is_bflt_file {
	my ($filename) = @_;
	my $fh;
	return open($fh, '<', $filename) && is_bflt_fh($fh);
}

sub normalize {
	my ($filename) = @_;

	open(my $fh, '+<', $filename)
		or die("failed to open $filename for read+write: $!");

	binmode($fh);

	my $hdr;
	my $bytes_read = sysread($fh, $hdr, FLAT_HDRLEN);
	return 0 unless $bytes_read == FLAT_HDRLEN;

	my ($f_magic, $f_rev, $f_entry, $f_data_start,
		$f_data_end, $f_bss_end, $f_stack_size, $f_reloc_start,
		$f_reloc_count, $f_flags, $f_build_date, $filler_11,
		$filler_12, $filler_13, $filler_14, $filler_15) = unpack('NNNNNNNNNNNNNNNN', $hdr);

	return 0 unless $f_magic == bFLT;
	return 0 unless $f_rev == 4;
	return 0 unless (is_bflt_header($hdr));

	my $f_build_date_orig = $f_build_date;

	unless ($f_build_date == 0) {	# Don't set a deterministic timestamp if there wasn't already a timestamp
		if (defined $File::StripNondeterminism::canonical_time) {
			if (!$File::StripNondeterminism::clamp_time || $f_build_date > $File::StripNondeterminism::canonical_time) {
				$f_build_date = $File::StripNondeterminism::canonical_time;
			}
		} else {
			$f_build_date = 0; # 0 is "no timestamp"
		}
	}

	return 0 if $f_build_date == $f_build_date_orig;

	my $hdr_new = pack('NNNNNNNNNNNNNNNN',
		$f_magic, $f_rev, $f_entry, $f_data_start,
		$f_data_end, $f_bss_end, $f_stack_size, $f_reloc_start,
		$f_reloc_count, $f_flags, $f_build_date, $filler_11,
		$filler_12, $filler_13, $filler_14, $filler_15);

	seek $fh, 0, SEEK_SET;
	syswrite ($fh, $hdr_new, 64);

	return 1;
}

1;

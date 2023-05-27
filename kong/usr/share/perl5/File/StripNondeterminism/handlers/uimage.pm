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
package File::StripNondeterminism::handlers::uimage;

use strict;
use warnings;

use Archive::Zip ();
use File::StripNondeterminism;
use Fcntl q/SEEK_SET/;

# /*
#  * Legacy format image header,
#  * all data in network byte order (aka natural aka bigendian).
#  */
# typedef struct image_header {
#	uint32_t	ih_magic;	/* Image Header Magic Number	*/
#	uint32_t	ih_hcrc;	/* Image Header CRC Checksum	*/
#	uint32_t	ih_time;	/* Image Creation Timestamp	*/
#	uint32_t	ih_size;	/* Image Data Size		*/
#	uint32_t	ih_load;	/* Data	 Load  Address		*/
#	uint32_t	ih_ep;		/* Entry Point Address		*/
#	uint32_t	ih_dcrc;	/* Image Data CRC Checksum	*/
#	uint8_t		ih_os;		/* Operating System		*/
#	uint8_t		ih_arch;	/* CPU architecture		*/
#	uint8_t		ih_type;	/* Image Type			*/
#	uint8_t		ih_comp;	/* Compression Type		*/
#	uint8_t		ih_name[IH_NMLEN];	/* Image Name		*/
#} image_header_t;

use constant IH_MAGIC => 0x27051956;
use constant IH_NMLEN => 32;
use constant IH_HEADERLEN => 64; # 7 * 4 + 4 + 32

sub crc {
	my ($data) = @_;
	return Archive::Zip::computeCRC32($data);
}

sub is_uimage_fh {
	my ($fh) = @_;
	my $hdr;

	my $bytes_read = sysread($fh, $hdr, IH_HEADERLEN);
	return 0 unless $bytes_read == IH_HEADERLEN;

	my ($ih_magic, $ih_hcrc) = unpack('NN', $hdr);

	# If this is a uImage file, first 64 bytes will contain the signature
	return 0 unless $ih_magic == IH_MAGIC;

	return 1;
}

sub is_uimage_file {
	my ($filename) = @_;
	my $fh;
	return open($fh, '<', $filename) && is_uimage_fh($fh);
}

sub normalize {
	my ($filename) = @_;
	my $hdr;

	open(my $fh, '+<', $filename)
		or die("failed to open $filename for read+write: $!");

	binmode($fh);

	my $bytes_read = sysread($fh, $hdr, IH_HEADERLEN);

	return 0 unless $bytes_read == IH_HEADERLEN;

	my ($ih_magic, $ih_hcrc, $ih_time, $ih_size,
			$ih_load, $ih_ep, $ih_dcrc, $ih_os_arch_type_comp,
			$ih_name_0, $ih_name_1, $ih_name_2, $ih_name_3,
			$ih_name_4, $ih_name_5, $ih_name_6, $ih_name_7) =
		unpack('NNNNNNNNNNNNNNNN', $hdr);

	return 0 unless $ih_magic == IH_MAGIC;

	## Generate header with ih_hcrc == 0 for checksum verification
	my $hdr_comp = pack('NNNNNNNNNNNNNNNN',
			$ih_magic, 0, $ih_time, $ih_size,
			$ih_load, $ih_ep, $ih_dcrc, $ih_os_arch_type_comp,
			$ih_name_0, $ih_name_1, $ih_name_2, $ih_name_3,
			$ih_name_4, $ih_name_5, $ih_name_6, $ih_name_7);

	my $crc_comp = crc($hdr_comp);

	return 0 unless $crc_comp == $ih_hcrc;

	my $ih_time_orig = $ih_time;

	unless ($ih_time == 0) {	# Don't set a deterministic timestamp if there wasn't already a timestamp
		if (defined $File::StripNondeterminism::canonical_time) {
			if (!$File::StripNondeterminism::clamp_time || $ih_time > $File::StripNondeterminism::canonical_time) {
				$ih_time = $File::StripNondeterminism::canonical_time;
			}
		} else {
			$ih_time = 0; # 0 is "no timestamp"
		}
	}

	return 0 if $ih_time == $ih_time_orig;

	## Generate header with ih_hcrc == 0 for checksum computation
	my $hdr_new = pack('NNNNNNNNNNNNNNNN',
			$ih_magic, 0, $ih_time, $ih_size,
			$ih_load, $ih_ep, $ih_dcrc, $ih_os_arch_type_comp,
			$ih_name_0, $ih_name_1, $ih_name_2, $ih_name_3,
			$ih_name_4, $ih_name_5, $ih_name_6, $ih_name_7);

	my $crc_new = crc($hdr_new);

	## Generate header with ih_hcrc == $crc_new
	$hdr_new = pack('NNNNNNNNNNNNNNNN',
			$ih_magic, $crc_new, $ih_time, $ih_size,
			$ih_load, $ih_ep, $ih_dcrc, $ih_os_arch_type_comp,
			$ih_name_0, $ih_name_1, $ih_name_2, $ih_name_3,
			$ih_name_4, $ih_name_5, $ih_name_6, $ih_name_7);

	seek $fh, 0, SEEK_SET;
	syswrite ($fh, $hdr_new, IH_HEADERLEN);

	return 1;
}

1;

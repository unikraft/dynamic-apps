#
# Copyright 2019 Chris Lamb <lamby@debian.org>
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
package File::StripNondeterminism::handlers::jmod;

use strict;
use warnings;

use File::StripNondeterminism::handlers::jar;

use File::Temp;
use File::Basename;

sub is_jmod_file($) {
	# Only recent versions of file(1) can detect Jmod file so we perform a
	# manual test.
	my ($filename) = @_;

	my $fh;
	my $str;
	return
		 open($fh, '<', $filename)
	  && read($fh, $str, 4)
	  && $str =~ /^JM..$/;
}

sub normalize {
	my ($filename) = @_;

	# .jmod files are .jar files with an extra 4-bytes at the top.

	open(my $fh, '<', $filename)
	  or die "Unable to open $filename for reading: $!";

	# Save the (exact) 4-byte header for subsequent replay
	read($fh, my $header, 4) == 4 or die "$filename: read failed: $!";

	# Output the tail of the file into a temporary file
	my $buf;
	my $tempfile = File::Temp->new(DIR => dirname($filename), CLEANUP => 0);
	my $bytes_read;
	while ($bytes_read = read($fh, $buf, 4096)) {
		print $tempfile $buf;
	}
	defined($bytes_read) or die "$filename: read failed: $!";
	close $tempfile;

	# Call the underlying Jar normalizer
	return 0
	  if not File::StripNondeterminism::handlers::jar::normalize(
		$tempfile->filename);

	open(my $in, '<', $tempfile->filename)
	  or die "Unable to open $tempfile->filename for reading: $!";
	open(my $out, '>', $filename)
	  or die "Unable to open $filename for writing: $!";

	# Write the header back to the final target...
	print $out $header;

	# ... followed by the rest of the modified file.
	while ($bytes_read = read($in, $buf, 4096)) {
		print $out $buf;
	}
	close $in;
	close $out;

	return 1;
}

1;

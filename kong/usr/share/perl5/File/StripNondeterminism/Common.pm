#
# Copyright 2016 Ryuunosuke Ayanokouzi <i38w7i3@yahoo.co.jp>
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
package File::StripNondeterminism::Common;

require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(copy_data);

use strict;
use warnings;

use File::Copy;

# Copy ONLY data from "$from_path" to "$to_path".
# It means that...
# 1. This function preserves as much of file "attributes"
#    (information stored in "inode" in Unix-style file system term)
#    of "$to_path" as possible.
# 2. This function simulates file editing of "$to_path".
# 3. After this function, "$to_path" would be a file associated with
#    a copied "data" from "from_path" and a "inode" from "$to_path".
sub copy_data($$) {
	my $from_path = shift;
	my $to_path = shift;

	return copy($from_path, $to_path);
}

1;

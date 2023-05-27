# Copyright © 2017 Bernhard M. Wiedemann <bmwiedemann@opensuse.org>
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

package File::StripNondeterminism::handlers::cpio;

use strict;
use warnings;

use File::StripNondeterminism;

sub normalize {
	my ($file) = @_;
	# if we cannot load the Cpio module, we just leave the file alone
	# to not have Archive::Cpio as a hard requirement
	# for strip-nondeterminism
	eval {require Archive::Cpio} or return 0;
	my $cpio = Archive::Cpio->new;
	eval {$cpio->read($file)};
	return 0 if $@; # not a cpio archive if it throws an error
	foreach my $e ($cpio->get_files()) {
		$e->{mtime} = $File::StripNondeterminism::canonical_time;
	}
	$cpio->write($file);
	return 1;
}

1;

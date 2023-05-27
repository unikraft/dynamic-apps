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
package File::StripNondeterminism;

use strict;
use warnings;

use POSIX qw(tzset);

our($VERSION, $canonical_time, $clamp_time, $verbose);

$VERSION = '1.7.0'; # <https://semver.org/>

sub init() {
	$ENV{'TZ'} = 'UTC';
	tzset();
}

sub _get_file_type($) {
	my $file=shift;
	open(FILE, '-|') # handle all filenames safely
	  || exec('file', _internal_optional_file_args(), '--', $file)
	  || die "can't exec file: $!";
	my $type=<FILE>;
	close FILE;
	return $type;
}

sub get_normalizer_for_file($) {
	$_ = shift;

	return undef if -d $_; # Skip directories

	# ar
	if (m/\.a$/ && _get_file_type($_) =~ m/ar archive/) {
		return _handler('ar');
	}
	# cpio
	if (m/\.cpio$/ && _get_file_type($_) =~ m/cpio archive/) {
		return _handler('cpio');
	}
	# gettext
	if (m/\.g?mo$/ && _get_file_type($_) =~ m/GNU message catalog/) {
		return _handler('gettext');
	}
	# gzip
	if (m/\.(gz|dz)$/ && _get_file_type($_) =~ m/gzip compressed data/) {
		return _handler('gzip');
	}
	# jar
	if (m/\.(jar|war|hpi|apk|sym)$/
		&& _get_file_type($_) =~ m/(Java|Zip) archive data/) {
		return _handler('jar');
	}
	# jmod
	if (m/\.jmod$/) {
		# Loading the handler forces the load of the jmod package as well
		my $handler = _handler('jmod');

		# Only recent versions of file(1) can detect Jmod file so we
		# perform a manual test.
		return $handler
		  if File::StripNondeterminism::handlers::jmod::is_jmod_file($_);
	}
	# javadoc
	if (m/\.html$/) {
		# Loading the handler forces the load of the javadoc package as well
		my $handler = _handler('javadoc');
		return $handler
		  if File::StripNondeterminism::handlers::javadoc::is_javadoc_file($_);
	}
	# bFLT
	if (m/\.bflt$/) {
		# Loading the handler forces the load of the bflt package as well
		my $handler = _handler('bflt');
		return $handler
		  if File::StripNondeterminism::handlers::bflt::is_bflt_file($_);
	}
	# uImage
	if (m/\.uimage$/i) {
		# Loading the handler forces the load of the uimage package as well
		my $handler = _handler('uimage');
		return $handler
		  if File::StripNondeterminism::handlers::uimage::is_uimage_file($_);
	}
	# PNG
	if (m/\.png$/ && _get_file_type($_) =~ m/PNG image data/) {
		return _handler('png');
	}
	# zip
	if (m/\.(zip|pk3|epub|whl|xpi|htb|zhfst|par|codadef)$/
		&& _get_file_type($_) =~ m/Zip archive data|EPUB document/) {
		return _handler('zip');
	}
	return undef;
}

our %HANDLER_CACHE;
our %KNOWN_HANDLERS = (
	ar	=> 0,
	bflt	=> 1,
	cpio	=> 1,
	gettext	=> 1,
	gzip	=> 1,
	jar	=> 1,
	javadoc	=> 1,
	jmod	=> 1,
	uimage	=> 1,
	png	=> 1,
	javaproperties => 1,
	zip	=> 1,
);

sub all_normalizers () {
	return sort keys %KNOWN_HANDLERS;
}

sub enabled_normalizers () {
	my @normalizers;
	foreach my $x (all_normalizers()) {
		push @normalizers, $x if $KNOWN_HANDLERS{$x};
	}
	return @normalizers;
}

sub enable_normalizer ($) {
	my ($name) = @_;
	die("Unknown normalizer: ${name}")
	  if not exists($KNOWN_HANDLERS{$name});
	$KNOWN_HANDLERS{$name} = 1;
}

sub disable_normalizer ($) {
	my ($name) = @_;
	die("Unknown normalizer: ${name}")
	  if not exists($KNOWN_HANDLERS{$name});
	$KNOWN_HANDLERS{$name} = 0;
}

sub _handler {
	# Returns the normalize routine for this handler or 0 (not undef)
	# if the handler is not enabled.
	my ($handler_name) = @_;
	return $HANDLER_CACHE{$handler_name}
	  if exists($HANDLER_CACHE{$handler_name});
	die("Unknown handler: ${handler_name}\n")
	  if not exists($KNOWN_HANDLERS{$handler_name});
	return 0 if !$KNOWN_HANDLERS{$handler_name};
	my $pkg = "File::StripNondeterminism::handlers::${handler_name}";
	my $mod = "File/StripNondeterminism/handlers/${handler_name}.pm";
	my $sub_name = "${pkg}::normalize";
	require $mod;
	no strict 'refs';

	if (not defined &{$sub_name}) {
		die("Internal error: No handler for $handler_name!?\n");
	}
	my $handler = \&{$sub_name};
	return $HANDLER_CACHE{$handler_name} = $handler;
}

sub get_normalizer_by_name($) {
	return _handler(shift);
}

# From Debian::Debhelper::Dh_Lib
my $_disable_file_seccomp;

sub _internal_optional_file_args {
	if (not defined($_disable_file_seccomp)) {
		my $consider_disabling_seccomp = 0;
		if ($ENV{'FAKEROOTKEY'} or ($ENV{'LD_PRELOAD'}//'') =~ m/fakeroot/) {
			$consider_disabling_seccomp = 1;
		}
		if ($consider_disabling_seccomp) {
			my $has_no_sandbox = (qx/file --help/ // '') =~ m/--no-sandbox/;
			$consider_disabling_seccomp = 0 if not $has_no_sandbox;
		}
		$_disable_file_seccomp = $consider_disabling_seccomp;
	}
	return ('--no-sandbox') if $_disable_file_seccomp;
	return;
}

1;

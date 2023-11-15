# A debhelper build system class for handling simple Makefile based projects.
#
# Copyright: © 2008 Joey Hess
#            © 2008-2009 Modestas Vainius
# License: GPL-2+

package Debian::Debhelper::Buildsystem::makefile;

use strict;
use warnings;
use Debian::Debhelper::Dh_Lib qw(dpkg_architecture_value escape_shell clean_jobserver_makeflags is_cross_compiling compat
	should_use_root gain_root_cmd error);
use parent qw(Debian::Debhelper::Buildsystem);

my %DEB_DEFAULT_TOOLS = (
	'CC'		=> 'gcc',
	'CXX'		=> 'g++',
	'PKG_CONFIG'	=> 'pkg-config',
);

# make makes things difficult by not providing a simple way to test
# whether a Makefile target exists. Using -n and checking for a nonzero
# exit status is not good enough, because even with -n, make will
# run commands needed to eg, generate include files -- and those commands
# could fail even though the target exists -- and we should let the target
# run and propagate any failure.
#
# Using -n and checking for at least one line of output is better.
# That will indicate make either wants to run one command, or
# has output a "nothing to be done" message if the target exists but is a
# noop.
#
# However, that heuristic is also not good enough, because a Makefile
# could run code that outputs something, even though the -n is asking
# it not to run anything. (Again, done for includes.) To detect this false
# positive, there is unfortunately only one approach left: To
# look for the error message printed by make when a target does not exist.
#
# This could break if make's output changes. It would only break a minority
# of packages where this latter test is needed. The best way to avoid that
# problem would be to fix make to have this simple and highly useful
# missing feature.
#
# A final option would be to use -p and parse the output data base.
# It's more practical for dh to use that method, since it operates on
# only special debian/rules files, and not arbitrary Makefiles which
# can be arbitrarily complicated, use implicit targets, and so on.
sub exists_make_target {
	my $this=shift;
	my $target=shift;

	my @opts=("-s", "-n", "--no-print-directory");
	my $buildpath = $this->get_buildpath();
	unshift @opts, "-C", $buildpath if $buildpath ne ".";

	my $pid = open(MAKE, "-|");
	defined($pid) || error("fork failed: $!");
	if (! $pid) {
		open(STDERR, ">&STDOUT");
		$ENV{LC_ALL}='C';
		exec($this->{makecmd}, @opts, $target, @_);
		exit(1);
	}

	local $/=undef;
	my $output=<MAKE>;
	chomp $output;
	close MAKE;

	return defined $output
		&& length $output
		&& $output !~ /\*\*\* No rule to make target (`|')\Q$target\E'/;
}

sub do_make {
	my $this=shift;

	# Avoid possible warnings about unavailable jobserver,
	# and force make to start a new jobserver.
	clean_jobserver_makeflags();

	# Note that this will override any -j settings in MAKEFLAGS.
	my $parallel = $this->get_parallel();
	if ($parallel == 0 or $parallel > 1) {
		# We have to use the empty string for "unlimited"
		$parallel = '' if $parallel == 0;
		unshift(@_, "-j${parallel}");
	} else {
		unshift(@_, '-j1');
	}

	my @root_cmd;
	if (exists($this->{_run_make_as_root}) and $this->{_run_make_as_root}) {
		@root_cmd = gain_root_cmd();
	}
	$this->doit_in_builddir(@root_cmd, $this->{makecmd}, @_);
}

sub make_first_existing_target {
	my $this=shift;
	my $targets=shift;

	foreach my $target (@$targets) {
		if ($this->exists_make_target($target, @_)) {
			$this->do_make($target, @_);
			return $target;
		}
	}
	return undef;
}

sub DESCRIPTION {
	"simple Makefile"
}

sub new {
	my $class=shift;
	my $this=$class->SUPER::new(@_);
	$this->{makecmd} = (exists $ENV{MAKE}) ? $ENV{MAKE} : "make";
	return $this;
}

sub check_auto_buildable {
	my $this=shift;
	my ($step) = @_;

	if (-e $this->get_buildpath("Makefile") ||
	    -e $this->get_buildpath("makefile") ||
	    -e $this->get_buildpath("GNUmakefile"))
	{
		# This is always called in the source directory, but generally
		# Makefiles are created (or live) in the build directory.
		return 1;
	} elsif ($this->check_auto_buildable_clean_oos_buildir(@_)
			 and $this->check_auto_buildable('configure')) {
		# Assume that the package can be cleaned (i.e. the build directory can
		# be removed) as long as it is built out-of-source tree and can be
		# configured. This is useful for derivative buildsystems which
		# generate Makefiles.
		return 1;
	}
	return 0;
}

sub build {
	my $this=shift;
	if (not $this->_is_targetbuildsystem
			and ref($this) eq 'Debian::Debhelper::Buildsystem::makefile'
			and is_cross_compiling()) {
		# Only inject build tools variables during cross-compile when
		# makefile is the explicit *main* build system.
		for my $var (sort(keys(%DEB_DEFAULT_TOOLS))) {
			my $tool = $DEB_DEFAULT_TOOLS{$var};
			if ($ENV{$var}) {
				unshift @_, $var . "=" . $ENV{$var};
			} else {
				unshift @_, $var . "=" . dpkg_architecture_value("DEB_HOST_GNU_TYPE") . "-" . $tool;
			}
		}
	}
	if (ref($this) eq 'Debian::Debhelper::Buildsystem::makefile' and not compat(10)) {
		unshift @_, "INSTALL=install --strip-program=true";
	}
	$this->do_make(@_);
}

sub test {
	my $this=shift;
	$this->make_first_existing_target(['test', 'check'], @_);
}

sub install {
	my $this=shift;
	my $destdir=shift;
	if (ref($this) eq 'Debian::Debhelper::Buildsystem::makefile' and not compat(10)) {
		unshift @_, "INSTALL=install --strip-program=true";
	}
	if ( -f $this->get_buildpath('libtool')) {
		$this->disable_parallel();
	}

	if (should_use_root('debhelper/upstream-make-install') and $< != 0) {
		$this->{_run_make_as_root} = 1;
	}

	$this->make_first_existing_target(['install'],
		"DESTDIR=$destdir",
		"AM_UPDATE_INFO_DIR=no", @_);
}

sub clean {
	my $this=shift;
	if (!$this->rmdir_builddir()) {
		$this->make_first_existing_target(['distclean', 'realclean', 'clean'], @_);
	}
}

1

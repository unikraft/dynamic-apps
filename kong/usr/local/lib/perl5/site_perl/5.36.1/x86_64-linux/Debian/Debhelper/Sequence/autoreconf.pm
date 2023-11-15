#!/usr/bin/perl
use warnings;
use strict;
use Debian::Debhelper::Dh_Lib;

insert_after("dh_update_autotools_config", "dh_autoreconf");
insert_before("dh_clean", "dh_autoreconf_clean");

1;

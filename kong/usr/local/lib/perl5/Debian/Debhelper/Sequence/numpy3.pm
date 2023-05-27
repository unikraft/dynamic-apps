#!/usr/bin/perl
use warnings;
use strict;
use Debian::Debhelper::Dh_Lib;

insert_before("dh_gencontrol", "dh_numpy3");

1

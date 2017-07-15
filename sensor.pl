#!/usr/bin/perl

use strict;
use warnings;


my $hdd = `/opt/scripts/plugins/hddread.pl`;
my $network = `/opt/scripts/plugins/network.pl`;
my $nginx = `/opt/scripts/plugins/nginx.pl`;
my $loadavg = `/opt/scripts/plugins/loadavg.pl`;
my $hddaval = `/opt/scripts/plugins/hddaval.pl`;
print('['.$hdd.','.$network.','.$nginx.','.$loadavg.','.$hddaval.']');

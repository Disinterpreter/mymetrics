#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $lavg = `cat /proc/loadavg`;

my @la = split(' ',$lavg);
print('{loadavg: \''.$la[0] .' ' . $la[1].' ' . $la[2].'\'' . '}');

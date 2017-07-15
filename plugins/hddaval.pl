#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $df = `df /`;

my @arrdf = $df =~ /\s+(\d+)\s+(\d+)\s+(\d+)/g;
print('{avalhdd:{all:'. $arrdf[0].',useed:'.$arrdf[1].',aval:'.$arrdf[2].'}}');


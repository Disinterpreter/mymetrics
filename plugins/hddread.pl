#!/usr/bin/env perl
use strict; use warnings;
#use Data::Dumper;
use Time::Local;


sub getRead() {
    my $iostat = `iostat`;
    if ($iostat =~ /md2\s+([0-9]{0,}\.[0-9]{0,}\s+){0,}(\d+)/g) {
        return $2;
    }
}

my $oldread = getRead();
sleep(1);
my $newread = getRead();

my $deltaread = $newread - $oldread;

#print($deltaread . "\n");
my $sendtime = time;
print("{hdd: $deltaread}");

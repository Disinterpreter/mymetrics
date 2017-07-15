#!/usr/bin/env perl
use strict; 
use warnings; 
#use Data::Dumper; 
use Time::Local; 
sub getNetwork {
        my @lines = `cat /proc/net/dev`;
        my @rx_fields = qw(bytes packets errs drop fifo frame compressed multicast);
        my @tx_fields = qw(bytes packets errs drop fifo frame compressed);
        for my $line (@lines) {
                 next if $line !~ /:/;
                 $line =~ s/^\s+|\s+$//g;
                 my ($iface, %rx, %tx);
                 ($iface, @rx{@rx_fields}, @tx{@tx_fields}) = split /[: ]+/, $line;
                 if ($iface eq 'em1') {
                        my $resRX = $rx{"bytes"};
                        my $resTX = $tx{"bytes"};
                        my %out = ( 'RX' => $resRX, 'TX' => $resTX );
                        return (%out);
        #print "rx{$_}: $rx{$_}\n" for sort keys %rx; print "tx{$_}: $tx{$_}\n" for sort keys %tx;
                  };
        }
}
my %before = getNetwork();
sleep(1); 
my %after = getNetwork(); 
my $resultRX = $after{'RX'} - $before{'RX'}; 
my $resultTX = $after{'TX'} - $before{'TX'};
#print($resultRX . " byte per seconds\n"); print($resultTX . " byte per seconds\n");
my $sendtime = time;
#print("RX: $resultRX TX: $resultTX\n") 
print("{networkRX: $resultRX, networkTX: $resultTX}");

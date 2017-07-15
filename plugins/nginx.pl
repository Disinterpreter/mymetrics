#!/usr/bin/perl
use strict; 
use warnings; 
use LWP;
use Time::Local; 
my $baseurl = "http://stats.sovetromantica.com/stats"; 
my $ua = LWP::UserAgent->new(keep_alive=>1); 
$ua->agent('Mozilla/5.0'); 
$ua->cookie_jar({}); 
my $response = $ua->get($baseurl); 
my $content = $response->content(); 
my @word = split /[a-zA-Z :]+/, $content;
#print($word[1]);
my $sendtime = time;
#print("$word[1]\n");
print("{nginxReq: $word[1]}")

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
#handle time in perl
my $st = time(); # seconds since 1970 01 01
say $st;

#my $then = localtime($st);
#say $then;

my $current = localtime();
say $current;

# assign the localtime() to a array
my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime(time);
say $sec;
say $min;
say $hour;
say $mday;
say $mon;
say $year;
say $wday;
say $yday;
say $isdst;

#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# a perl version of grep  in linux
my $regex = shift;
print grep {$_ =~ /$regex/} <>; # the diamond operator <> picks each line of the file

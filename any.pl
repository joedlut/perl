#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use List::MoreUtils qw(any);
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# you can also use any in MoreUtils to check whether an array contains an element
my @names = qw(joedlut han wang);
my $visitor = <STDIN>;
chomp $visitor; # do not forget to chomp
if (any {$visitor eq $_} @names)
{
    say "yes";
}
else
{
    say "no";
}

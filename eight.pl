#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Scalar::Util qw(looks_like_number);
use 5.010; # in order to use say

say "how many loaves of bread shall I buy?";
my $loaves = <STDIN>;
chomp $loaves;

if(looks_like_number($loaves))
{
    say "I am on it";
}
else
{
    say "sorry, I do not get it";
}


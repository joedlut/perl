#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

my $x; # if you don's assigh a value to x,then x is undef
if (defined $x)
{
    say "$x is defined";
}
else
{
    say "$x is undef";
}


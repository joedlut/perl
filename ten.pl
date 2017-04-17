#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

# these values are considered to be false
my $a = 0;
my $b = '0';
my $c = '';
my $d = undef;
if ($a)
{
    say "bingo";
}
if ($b)
{
   say "bingo";
}
if ($c)
{
   say "bingo";
}
if ($d)
{
   say "bingo";
}
my $str1 = "false";
my $str2 = "true";
if ($str1)
{
   say "bingo";
}
if ($str2)
{
   say "bingo";
}

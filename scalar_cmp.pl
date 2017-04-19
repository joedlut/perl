#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# two kinds of comparing operators
# String: eq ne lt gt le ge
# Numeric:== != < > <= >=
if (12.0 == 12)
{
    say "yes";
}
else
{
    say "no";
}
# interesting
if ("12" == 12) # perl == will turn '12' into 12
{
    say "yes";
}
my $str1 = "joedlut";
my $str2 = "joedlut";
if ($str1 eq $str2)
{
    say "yes";
}

say "input:";
my $name = <STDIN>;
chomp $name;
if ($name eq "") # use eq to compare the string not "=="
{
    say "true";
}

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

say "What is your name?";
#my $name = <STDIN>;
my $name = <STDIN>;
chomp $name;
say "Hello $name, how are you?";

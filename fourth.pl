#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

say "hello world";

my $x = int 3.14; # the int function will turn 3.14 to 3
say $x;

my $y = int 3.0;
say $y;

my $z = int -3.14;
say $z;

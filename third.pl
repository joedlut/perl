#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

#say "hello world";
my $str = "hello world";
say lc $str; # lower case
say uc $str; # upper case
say length $str;

my $str1 = "The black cat jumped from the green tree";
say index $str1, "cat";
say index $str1, "dog";
say index $str1, "The";

say substr $str, 4, 5;

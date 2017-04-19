#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

##########the function join################
my @names = ("joedlut", "xiaohong", "xiaofang");
my $str = join ":", @names;
say $str;

my $data = join "-", @names;
say $data;

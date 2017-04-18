#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use Data::Dumper qw(Dumper);
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
#In perl, use function sort to sort the array     my @sorted = sort @original;
my @names = qw(wangxiaoming Hanguodong hanfangfang xuwenqiang);
say Dumper \@names;
my @sorted_names = sort @names;
say Dumper \@sorted_names;

# in default  sort {$a cmp $b} @original if the left is less than right,return 1;

# ignoring the case
my @sorted_names_ig = sort {lc($a) cmp lc($b)} @names;
say Dumper \@sorted_names_ig;

# sort by the number value use <=>
my @numbers = (12,4,34,45,3,12,11,1,-1,0);
# my @sorted_numbers = sort @numbers; # sort by ASCII in default
my @sorted_numbers = sort {$a<=>$b} @numbers;
say Dumper \@sorted_numbers;

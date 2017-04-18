#!/usr/bin/perl
use strict;
use Data::Dumper qw(Dumper);
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# the sort method return a new array, with original array is not affected
# sort by filename
my @files = glob "*.pl";
my @sorted_files = sort @files;
say Dumper \@files;
say Dumper \@sorted_files;

# sort by filename length
# consider how to do it in shell?
my @sorted_length = sort {length($a)<=>length($b)} @files; # notice no comma!!!!
say Dumper \@sorted_length;

# sort by filesize
# my @sort_size = sort {-s $a <=> -s $b} @files;
# say Dumper \@sort_size;

# in order to increase the sort speed, we consider put the size of all files in the memory
#my @unsorted_pairs = map {[$_, -s $_]}  @files; # one array reference for each file
# say Dumper \@unsorted_pairs;
#my @sorted_pairs = sort {$a->[1] <=> $b->[1]} @unsorted_pairs; # unsorted_pairs
#my @quickly_sorted_files = map {$_ -> [0]} @sorted_pairs;
#say Dumper \@quickly_sorted_files;

# a simpler way by using the Schwartzian transition\
# the basic Schwartzian transition
# my @sorted =
# map {$_->[0]}
# sort {$a->[1]<=>$b->[1]}
# map {[$_, -s $_]}
# @unsorted

my @quickly_sorted_files =
map {$_->[0]}
sort {$a->[1]<=>$b->[1]}
map {[$_, -s $_]}
@files;
say Dumper \@quickly_sorted_files;

# the sort speed is increased with the cost of memory and the complexity of codes.
say Dumper \@files;

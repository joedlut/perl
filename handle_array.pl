#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper qw(Dumper); # used to look at the values in an array
use 5.010; # in order to use say

##################array in Perl#########################

my @names;
@names = ("xiaohong", "xiaoming", "xiaokang");
say Dumper \@names;

foreach my $name(@names)
{
    say $name;
}

# pick just one value in array
say $names[2]; # notice that it is $names[2] not @names[2]

# the largest index is $#names, which the number of array minus 1
say $#names;

# the function scalar return the number of array
say scalar @names;

say @names + 1; # 3 + 1 ,mind the context

# iterate the index of an array
foreach my $i (0..$#names)
{
   say "$i-------------$names[$i]";
}

# push: add an element to the end of an array
push @names, "joedlut";
say Dumper \@names;

# pop: pick the last element of an array
my $last_value = pop @names;
say "the last: $last_value";
say Dumper \@names;

# shift: pick the first element of an array
my $first_value = shift @names;
say "the first: $first_value";
say Dumper \@names;

# unshift: add an element to the beginning of an array
unshift @names, "hanguodong";
say Dumper \@names;

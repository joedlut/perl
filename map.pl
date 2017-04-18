#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper qw(Dumper);
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# map is used to modify the elements of the initial array
my @numbers = (1..5); # 1 2 3 4 5
my @doubles = map {$_ * 2} @numbers;  # map code_block array, no comma!!!!!!!
say Dumper \@numbers;
say Dumper \@doubles;

# create a hash quickly using map
my @names = qw(xiaohong xiaoming xiaohan joedlut);
my %is_invited = map {$_ => 1} @names;

my $visitor = <STDIN>;
chomp $visitor;
if ($is_invited{$visitor}) # note that hash is quicker than array,if the array is small use grep or any(List::MoreUtils),else use hash
{
   say "The visitor $visitor is invited";
}
say Dumper \%is_invited;

# more complex code_block in map
my %invited = map {$_ =~ /^x/ ? ($_=>1):()} @names; # we only want name beginning with x:   xiaohong xiaoming xiaofang
say Dumper \%invited;


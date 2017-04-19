#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

my @dwarfs = qw(Doc Grumpy Happy Sleepy Snezzy Dopey Bashful);
# delete elements from an array
splice @dwarfs, 1, 2;  # offset, length |  delete Grumpy, Happy
say "@dwarfs";

# add an element 
splice @dwarfs, 3, 0, "Snowhite";
say "@dwarfs";

# add several elements
splice @dwarfs, 3, 0, "Xiaohong", "Xiaoming";
say "@dwarfs";

# add another array into an array
my @names = qw("Hanguodong"  "Wangxiaoming");
splice @dwarfs, 0, 0, @names;
say "@dwarfs";

# the values which function split returns
# my @others = qw(); In the List context
my @books = qw(C++ Java Perl Python);
my @who = splice  @books, 1, 2;
say "@who";

# in the scalar context
my $who = splice @books, 1, 2;
say "$who";

my @number = qw(0 1 2 3 4 5 6 7);
my @values = splice @number, 1, -1;
say "@values";


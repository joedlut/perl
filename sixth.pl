#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

say "hello world";
for(my $i=0; $i<10; $i++)
{
    say $i;
}

#####################################
foreach my $i(0..10)
{
    say $i;
}
####################################
# a dead loop
for(;;)
{
    say "hello world";
}
####################################
# also a dead loop
while(1)
{
    say "shit";
}

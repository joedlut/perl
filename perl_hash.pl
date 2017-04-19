#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say

###########hash in perl####################
my %color_of;
$color_of{apple} = 'red'; # no comma in key will also be OK
say $color_of{'apple'};
$color_of{orange} = 'yellow';
$color_of{banana} = 'yellow';
$color_of{grape} = 'purple';
my @fruits = keys %color_of;
#foreach my $fruit(@fruits)
#{
#    say $fruit;
#}

#iterate the hash
foreach my $fruit (keys %color_of)
{
    say "$fruit=>$color_of{$fruit}";
}

# another way to decalre a hash
my %person = (
joedlut => 21,
wangxiaoming => 29,
wangxiaofang => 31,
hanguodong =>24,
);

foreach my $name (keys %person)
{
   say "$name => $person{$name}";
}

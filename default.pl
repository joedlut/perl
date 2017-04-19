#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use Data::Dumper qw(Dumper);
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
#while (<STDIN>)
#{
#    chomp;
#    if (/s$/)
#    {
#        say;
#    }
#}
# if you do not specify the parameter, perl will operate on $_
# chomp  <STDIN> say  print foreach  
#while ($_ = <STDIN>)
#{
#    chomp $_;
#    if ($_ =~ /s$/)
#    {
#        say $_;
#    }
#}

$_ = "1:2:3";
my @numbers = split /:/;
say $numbers[-1];

my @names = qw(wangxiaoming lixiaohong hanguodong);
foreach (@names)
{
    say;
}

#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
my $str = "                 come on!     ";
say length($str);

# delete the spaces on the left side
#$str =~ s/^\s+//g;
#say $str;

# delete the spaces on the right side
#$str =~ s/\s+$//g;
#say length($str);

# delete the spaces on both sides
$str =~ s/^\s+|\s+$//g; # combine two regular expressions using |
say length($str);



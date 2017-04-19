#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# turn all the 'perl' in test.txt to 'java' while creating a backup which ends by .bak
perl -i.bak -p -e "s/\bperl\b/java/gi" test.txt

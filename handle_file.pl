#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say
##############In perl, do not forget to add ; at the end each sentence#######################
########handle files#############
my $filename = "123.txt";
open(my $fh, '>', $filename) or die "cannot open file $filename $!"; # open or die 
print $fh  "hello world!\n"; # no , after the first parameter $fh!!!!!! print is used to write 'hello world to 123.txt'
close $fh;

# specify the encoding
my $file = "test.txt";
open(my $myfh, '>:encoding(UTF-8)', $file) or die "cannot open file $file $!";
print $myfh "bullshit\n";
close $myfh;

say "done!";

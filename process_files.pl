#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use File::Copy qw(move copy); # used to rename a file, support several OS 
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############

###############unlink   rename copy move File::Copy #######################

#unlink(remove a file or several files)
my @files = ("1.txt", "2.txt", "3.txt"); # ways to handle an array qw(1 2 3)  or ("1","2","3")
# my $file = "4.txt";
# unlink $file;
unlink @files;

# rename
my $old_file = "1.txt";
my $new_file = "joedlut.txt";
rename $old_file, $new_file;

# use File::Copy copy to copy a file
copy "copy1.txt", "copy2.txt";

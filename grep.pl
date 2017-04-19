#!/usr/bin/perl
use strict; # when you declare a variable, you have to use   my 
use warnings;
use diagnostics;
use Data::Dumper qw(Dumper);
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# the grammer of function grep   ###########grep {block} @array########### no , after {block}!!!!!!

# filter the numbers
my @numbers = qw(1 3 4 5 2 54 12);
my @big_numbers = grep {$_ > 10} @numbers;
say Dumper \@big_numbers;

# filter the files
my @files = glob '*.pl';
my @old_files = grep {-M $_ > 3} @files; # -M $path_to_file returns the days since the last modification of the file
say Dumper \@old_files;

# check whether the @array contains a element
my @names = qw(joedlut hanguodong wangxiaoming lixiaofang);
my $visitor = <STDIN>;
chomp $visitor;
# grep in the scalar context ; returns the times that matches
if (grep {$visitor eq $_} @names)
{
     say "Visitor $visitor is in the guest list";
}
else
{
    say "Visitor $visitor is not in the guest list";
}


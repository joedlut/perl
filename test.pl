#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use Data::Dumper qw(Dumper);
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
my $filename = "/etc/passwd";
my %shell_count;
open my $fh, '<', $filename or die "cannot open $filename";
while (my $line = <$fh>)
{
    chomp $line; # do not forget to chomp!!!!
    my @fields = split /:/, $line;
    $shell_count{$fields[-1]}++;
}

foreach my $sh (reverse sort {$shell_count{$a}<=>$shell_count{$b}} keys %shell_count)
{
    printf("%-20s %s\n", $sh, $shell_count{$sh});
}

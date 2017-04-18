#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
my $filename = "reports.txt";
# open(my $fh,'<:encoding(UTF-8)', $filename) or die "cannot open file $filename $!";
# while (my $line = <$fh>)
# {
#    chomp $line;
#    say $line;
#}
#say "done!";
if (open(my $fh, '<:encoding(UTF-8)', $filename))
{
    while (my $line = <$fh>)
    {
       chomp $line;
       say $line;
    }
}
else
{
    warn "cannot open file $filename $!"
}
print "done!\n";

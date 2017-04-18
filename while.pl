#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
my $counter = 10;
while ($counter > 0)
{
    say $counter;
    $counter -= 2;
}
say "done";


# dead loop ############ use last to jump out of the dead loop##############
while (1)
{
    say "What programming language are you learning?";
    my $name = <STDIN>;
    chomp $name;
    if ($name eq 'Perl')
    {
        last;
    }
    say "Wrong try again!";
}
say "done!";

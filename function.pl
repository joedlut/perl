#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# in perl function is sub
# ask_question();  # when you use function, you'd better not delete the ()
# my $first_answer = get_answer();
# say $first_answer;
# ask_question();
# my $second_answer = get_answer();
# say $second_answer;
my $first_name = prompt("input your first name");
my $second_name = prompt("input your second name");
say $first_name, $second_name;
#############################################################################
sub ask_question # no brackets after the function name!!!!!In perl, you cannot specify the parameters array
{
    say "Have we arrived already?";
    return; # if you have nothing to return, use return anyway(advice)
}

sub get_answer
{
    my $answer = <STDIN>;
    chomp $answer;
    return $answer;
}

sub terminate
{
    die "Hasta La Vista";
}

sub prompt
{
    my ($text) = @_; # all the parameters will be stored to @_ ,you can visit it by $_[0] $_[1], but a better way is to assign it to a inner variable
    # do not forget the ()!!!!!   (array context)
    say $text;
    my $answer = <STDIN>;
    chomp $answer;
    return $answer;
}

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Text::CSV; # a class
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
##########Handling .csv files################################################
# calculate the sum of the third field of data.csv
# cat data.csv | awk -F ',' 'BEGIN{sum=0}{sum=sum+$3}END{print sum}'

#first method,use split
my $file = $ARGV[0] or die "need to get the csv file from the command line\n";
my $sum = 0;
open(my $fh, '<', $file) or die "cannot open file $file $!\n";
#while(my $line = <$fh>) # read one line from file
#{
#    chomp $line;
#    my @fields = split ",", $line;
#    $sum += $fields[2];
#}
#say $sum;


# second method, use Text::CSV
# second method is useful  when one line is like this:            Kuka, "Hofeherke,alma", 100, Kiralyno
#my $csv = Text::CSV->new({sep_char => ','}); # create an instance using the new,the sep_char can be omitted ,'cause the sep_char is , in default
#while (my $line = <$fh>)
#{
#    chomp $line;
#    if($csv->parse($line))
#    {
#        my @fields = $csv->fields();
#        $sum += $fields[2];
#    }
#    else
#    {
#        warn "line cannot be parsed $line \n";
#    }
#}
#say $sum;

# third method, when the data field covers several lines
my $csv = Text::CSV->new(
{
binary => 1,
auto_diag =>1,
sep_char => ',' # not really needed because the default is ,
}
);
while (my $fields = $csv->getline($fh))
{
    $sum += $fields->[2];
}
if (not $csv->eof)
{
    $csv->error_diag();
}
close $fh;
say $sum;


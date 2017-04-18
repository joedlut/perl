#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
#use File::Slurp qw(read_file write_file);
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
#if the file is not too big and can be stored to the memory, you can use File::Slurp
# my $filename = "README.txt";
# my $data = read_file $filename, {binmode => ':utf8'}; # put the whole content of the file into a scalar value
# $data =~ s/Copyright Start-up/Copyright Large Corporation/g;
# write_file $filename, {binmode=>':utf8'}, $data;



######################the second method############################
my $filename = "README.txt";
sub read_file
{
    my ($filename) = @_;
    open my $in, '<:encoding(UTF-8)', $filename or die "cannot open the file $filename";
    local $/ = undef; # tell perl to put the whole content of file into a scalar variable,local means $/ will be original once the function ends;
    my $all = <$in>;
    chomp $all;
    close $in;
    return $all;    
}

sub write_file
{
    my ($filename, $content) = @_;
    open my $out, '>:encoding(UTF-8)', $filename or die "cannot open the file $filename";
    print $out $content; # no , afer the $out!!!!!
    close $out;
    
    return;
}
my $data = read_file $filename;
# say $data;
$data =~ s/Copyright Large Corporation/Copyright Start_up/g;
write_file $filename, $data;






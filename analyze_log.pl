#!/usr/bin/perl
use strict; # when you declare a variable, you have to use my
use warnings;
use diagnostics;
use Data::Dumper qw(Dumper);
use 5.010; # in order to use say
##########in perl,don't forget the ; at the end of each sentence#############
# the function process_block processes one block one at a time
# 'cause the first entity is not defined, we set the $entity to be _DEFAULT_ to be default
my $filename = shift or die "Usage: $0 debug.log\n";


# mind the working area of the variables below
my $entity = '_DEFAULT_';
my $block;
my $record;
my @errors;

my %error_messages;
my %block_count;
process($filename);

# say Dumper \%block_count;
# say Dumper \%error_messages;

say "number of blocks of each entity";
foreach my $bl (reverse sort {$block_count{$a}<=>$block_count{$b}} keys %block_count)
{
    printf("%-15s %s\n", $bl,$block_count{$bl});
}
say "frequency of errors";
foreach my $msg (reverse sort {$error_messages{$a}<=>$error_messages{$b}} keys %error_messages)
{
    printf("%-25s %s\n", $msg, $error_messages{$msg});
}

sub process
{
    my ($file) = @_;
    open my $fh, '<', $file or die "cannot open file $file $!";
    while (my $line = <$fh>)
    {
        chomp $line;
        if ($line =~ /^=+ \s+ ERRORS \s+ ON \s+ ENTITY \s+ (\w+) \s+ =+$/x) # entities
        {
            # say $line;
            process_block();
            $entity = $1;
            # say $entity;
            next; # go to the next loop 
        }
        if ($line =~ /^SOURCE \s+ LINE \s+ (\d+)$/x) # blocks
        {
            process_block(); # process the last block information;notice that when the process_block executes the first time,because block is undef,so itwill do nothing until it executes the second time.
            $block = $1;
            # say $block;
            next; 
        }
        if ($line =~ /^&N \s+ (\w+)$/x)
        {
            my $record = $1;
            next;
            #say $record;
            
        }
        if ($line =~ /^[ ^]*$/) # empty line or line with only ^
        {
            #say $line;
            next;  
        }
        push @errors, $line;
    }
    # say Dumper \@errors;
    #process_block(); # process the last block
    return;
}
sub process_block
{
    return if not $block;
    $block_count{$entity}++;
    foreach my $err (@errors)
    {
        $error_messages{$err}++;

    }
    #say  Dumper \%block_count;
    #say Dumper \%error_messages;
    $block = undef;
    $record = undef;
    @errors = ();

    return;      
}

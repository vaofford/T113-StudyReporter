package TestHelper;
use Moose::Role;
use Test::Most;
use Data::Dumper;
use File::Slurper qw(read_lines read_text);
use Test::Files;
use Test::Output;

$ENV{PATH} .= ":./bin";




no Moose;
1;
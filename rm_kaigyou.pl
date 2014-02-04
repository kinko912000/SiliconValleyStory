#!/usr/bin/perl

use warnings;
use 5.10.0;
use utf8;
open my $fh ,'<','story.txt';
open LOG , ">edit.txt";

while(my $line = readline $fh){
    $line =~ s/。/\\/;
    print LOG "$line";
}


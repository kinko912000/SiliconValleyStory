#!/usr/bin/perl

use Encode 'decode';
use Encode 'encode';
use warnings;
use 5.10.0;
use utf8;
open my $fh ,'<','story.txt';
open LOG , ">edit.txt";

while(my $line = readline $fh){
    #  $line = decode('UTF-8',$line);
    $line =~ s/\x{e38082}/\n/;
    #  $line = encode('UTF-8',$line);
    print LOG "$line";
}


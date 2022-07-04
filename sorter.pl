#! /usr/bin/perl

# temporary file dedicated to the actual sorting program
# to test, place this file in the desired chapter folder and run.

@pages = `ls`;
$iter = scalar @pages; # length of array as an integer


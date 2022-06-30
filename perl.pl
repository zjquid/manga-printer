#! /usr/bin/perl
# Andrew Hooke
# v0.1 - 6/29/22
# ----- # ----- # ----- #
# welcome to the program
# place this file in the overarching directory, where each chapter
# is a subfolder:
#    book title
#      |- program.pl
#      |- chapter 1
#      |    |- 001.png
#      |    |- 002.png
#      |
#      |- chapter 2
#      |    |- you_get_the_picture.png

# ----- # ----- # ----- #

# driver function - makes list of chapters and sorts
# pages in each chapter sequentially.
@chapters = `ls -d */`
$numchap = scalar @chapters;
for ($i = 0; $i <= $numchap - 1; $n += 1){
  # the $numchap - 1 is because perl counts from 0,
  # but the 'scalar' function gives the length starting with 1.
  # enters 'i'th chapter directory
  chdir('@chapters[$i]');
  # runs the main program
  ### PUT CALL TO SUBROUTINE HERE ###
  }

### INIT SUBROUTINE HERE ###

# creating the list of pages in 'normal' order
# creates array of all pages in selected chapter
@pages = `ls`;
$iter = scalar @pages; # length of array as an integer

# create code to sort the pages lmao... the hard part

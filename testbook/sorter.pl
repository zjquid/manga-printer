#! /usr/bin/perl

# temporary file dedicated to the actual sorting program
# to test, place this file in the desired chapter folder and run.
chdir('chapter2'); # delete this line when this is added to the main script

@pages = `ls`;
$iter = scalar @pages; # length of array as an integer
#@matrix = (
#	   ["a11","a12"],
#	   ["a21","a22"],
#	   ["a31","a32"]
#	   );
#print "$matrix[1][0] \n"; # calls [row][column], init index = 0

# finding number of rows for page matrix
$numrows = int(($iter / 2) + 0.99); # ceiling func, basically

# if odd number of pages, add blank page at end 
if ($iter % 2 == 1) {
    # $pages[$iter] = "blank \n";
    $blanktitle = 0 . $numrows * 2;
    print `cp ~/manga-printer/blank.png $blanktitle`;
    # redo count to account for blank page
    @pages = `ls`;
    $iter = scalar @pages;
};

for ($i = 0; $i < $numrows; $i += 1){
  # right column first, because manga ordering
  $matrix[$i][1] = $pages[$i];
  $matrix[$i][0] = $pages[$iter - ($i + 1)];
};

# printing matrix for testing
print "$matrix[0][0] $matrix[0][1]";
print "$matrix[1][0] $matrix[1][1]";
print "$matrix[2][0] $matrix[2][1]";
print "$matrix[3][0] $matrix[3][1]";
print "$matrix[4][0] $matrix[4][1]";
print "$matrix[5][0] $matrix[5][1]";
print "$matrix[6][0] $matrix[6][1]";
print "$matrix[7][0] $matrix[7][1]";
print "$matrix[8][0] $matrix[8][1]";
print "$matrix[9][0] $matrix[9][1]";
print "$matrix[10][0] $matrix[10][1]";

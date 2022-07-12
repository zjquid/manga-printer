#! /usr/bin/perl

# temporary file dedicated to the actual sorting program
# to test, place this file in the desired chapter folder and run.

@pages = `ls`;
$iter = scalar @pages; # length of array as an integer
#@matrix = (
#	   ["a11","a12"],
#	   ["a21","a22"],
#	   ["a31","a32"]
#	   );
#print "$matrix[1][0] \n"; # calls [row][column], init index = 0

# finding number of rows for page matrix
$numrows = int($iter / 2);

for ($i = 0; $i <= $numrows; $i += 1){
  # right column first, because manga ordering
  $matrix[$i][1] = $pages[$i];
  $matrix[$i][0] = $pages[$i + $numrows];
};

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










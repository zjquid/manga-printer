#! /usr/bin/perl

$iter = 18; # number of pages

for ($n = 1; $n <= $iter; $n += 1) {
    
    if ($n < 10){
	print `touch 00$n`
    }
    elsif ($n > 10 && $n < 100){
	print `touch 0$n`
    }
    elsif ($n > 100 && $n < 1000){
	print `touch $n`
    }
    elsif ($n > 1000) {
	die "too big of a numba"
    }
}
    

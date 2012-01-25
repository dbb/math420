#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

## Daniel Bolton
## Math 420
## HW 01
## 27 Jan 2012

# p13 no14a ###########################

sub P_a {
    my $x = shift;
    return $x**4 + $x**3 - 13*$x**2 - $x - 12
}

sub H_a {
    my $x = shift;
    return ((( $x + 1 ) * $x - 13 ) * $x - 1 ) * $x - 12;
}

my $c_a = 3;

say "P_0(c_a) = " . P_a($c_a); ## returns -24
say "H_0(c_a) = " . H_a($c_a); ## returns -24

# p13 no14b ###########################

sub P_b {
    my $x = shift;
    return 2*$x**7 + $x**6 + $x**5 - 2*$x**4 - $x + 23
}

sub H_b {
    my $x = shift;
    return (((((( 2*$x + 1 ) * $x + 1) * $x - 2 ) * $x + 0 ) * $x + 0) * $x - 1) * $x + 23;
}

my $c_b = 3;

say "P_0(c_b) = " . P_b($c_b); ## returns 5204
say "H_0(c_b) = " . H_b($c_b); ## returns 5204

print "\n\n";

## p23 no2 ###########################

sub bin_to_dec {
    my $bin = shift;
    my $dec = 0;
    my @digits = reverse( split "", $bin );
    for ( my $i = 0; $i <= $#digits; $i++ ) {
        $dec += $digits[$i] * 2 ** $i;
    }
    return $dec;
}

say "(a) 10101 in decimal: " . bin_to_dec( "10101" );           ## 21
say "(b) 111000 in decimal: " . bin_to_dec( "111000" );         ## 56
say "(c) 11111110 in decimal: " . bin_to_dec( "11111110" );     ## 254
say "(d) 1000000111 in decimal: " . bin_to_dec( "1000000111" ); ## 519

print "\n\n";

## p23 no3 ###########################

sub bin_dec_frac {
    my $n = shift;
    $n =~ s/0\.//;
    my $dec;
    my @digits = split "", $n;

    for ( my $i = 1; $i <= $#digits; $i++ ) {
        $dec += $digits[$i] * 2 ** ($i*-1);
    }
    return $dec;
}

say "(3a) 0.11011 in dec: " . bin_dec_frac( "0.11011" ); ## 0.6875
say "(3b) 0.10101 in dec: " . bin_dec_frac( "0.10101" ); ## 0.3125
say "(3c) 0.1010101 in dec: " . bin_dec_frac( "0.1010101" ); ## 0.328125
say "(3d) 0.110110110 in dec: " . bin_dec_frac( "0.110110110" ); ## 0.7109375

print "\n\n";


## p23 no4 ###########################

sub no4 {
    my $n = shift;
    my ( $left, $right ) = split /\./, $n;
    say "left $left";
    say "right $right";
    ## use previous subroutines
    return bin_to_dec( $left ) + bin_dec_frac( $right );
}

say "(4a) 1.0110101 in dec: " . no4( "1.0110101" );         ## 1.828125
say "(4b) 11.001001001 in dec: " . no4( "11.001001001" );   ## 3.28515625

print "\n\n";


## p23 no6 ###########################

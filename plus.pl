#!/usr/bin/perl
#
# plus - compute the sum of input
#
# usage:
#	cat data | plus
#

# usage and variables
#
use strict;
my $sum;	# sum of input
my $line;	# current value read

# read variables
#
$sum = 0;
while (defined($line = <>)) {
    $sum += $line;
}

# produce the sum
#
print "$sum\n";
exit 0;

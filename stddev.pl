#!/usr/bin/perl
#
# stddev - compute the standard deviation of input
#
# usage:
#	cat data | stddev
#

# usage and variables
#
use strict;
my $sum;	# sum of input
my $line;	# current value read
my $count;	# number of values read
my $ave;	# average
my $sqdiff;	# sum of the square of the average differences
my $i;		# index
my @set;	# value set read

# read variables
#
$sum = 0;
while (defined($line = <>)) {
    $sum += $line;
    $set[$count] = $line;
    ++$count;
}

# firewall - one or no variables have 0 standard deviation
#
if ($count < 2) {
    print "0\n";
    exit 0;
}

# compute the average
#
$ave = $sum / $count;

# determine the sum of the square of the average differences
#
$sqdiff = 0;
for ($i=0; $i < $count; ++$i) {
    $sqdiff += ($set[$i] - $ave) * ($set[$i] - $ave);
}

# produce the standard deviation
#
print sqrt($sqdiff / ($count-1)), "\n";
exit 0;

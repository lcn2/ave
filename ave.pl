#!/usr/bin/perl
#
# ave - compute the average of input
#
# usage:
#	cat data | ave
#

# usage and variables
#
use strict;
my $sum;	# sum of input
my $line;	# current value read
my $count;	# number of values read

# read variables
#
$sum = 0;
$count = 0;
while (defined($line = <>)) {
    ++$count;
    $sum += $line;
}

# firewall - no values as 0 average
#
if ($count <= 0) {
    print "0\n";
    exit 0;
}

# produce the average
#
print $sum/$count, "\n";
exit 0;

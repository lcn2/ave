#!/usr/bin/env perl -w
#
# stddev - compute the standard deviation of input
#
# Copyright (c) 1996,2004,2023 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
# USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# usage:
#	cat data | stddev
#
# chongo <was here> /\oo/\
#
# Share and enjoy!

# usage and variables
#
use strict;
use bytes;
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

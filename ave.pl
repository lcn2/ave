#!/usr/bin/perl
#
# ave - compute the average of input
#
# @(#) $Revision: 1.3 $
# @(#) $Id: ave.pl,v 1.3 1999/09/27 05:36:31 chongo Exp chongo $
# @(#) $Source: /usr/local/src/cmd/ave/RCS/ave.pl,v $
#
# Copyright (c) 1996,2004 by Landon Curt Noll.  All Rights Reserved.
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
#	cat data | ave
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

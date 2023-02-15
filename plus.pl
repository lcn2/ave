#!/usr/bin/perl
#
# plus - compute the sum of input
#
# @(#) $Revision: 1.4 $
# @(#) $Id: plus.pl,v 1.4 2014/03/16 02:34:56 root Exp $
# @(#) $Source: /usr/local/src/bin/ave/RCS/plus.pl,v $
#
# Copyright (c) 1999,2004 by Landon Curt Noll.  All Rights Reserved.
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
#	cat data | plus
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

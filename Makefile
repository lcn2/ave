#!/usr/bin/env make
#
# ave - average, sum and other statistical filters
#
# Copyright (c) 1996,1999,2014,2023 by Landon Curt Noll.  All Rights Reserved.
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
# chongo <was here> /\oo/\
#
# Share and enjoy!

SHELL= bash
BINMODE= 0555
DESTBIN= /usr/local/bin
INSTALL= install
RM= rm
CP= cp
CHMOD= chmod

TARGETS= ave plus stddev

all: ${TARGETS}

ave: ave.pl
	${RM} -f $@
	${CP} $@.pl $@
	${CHMOD} +x $@

plus: plus.pl
	${RM} -f $@
	${CP} $@.pl $@
	${CHMOD} +x $@

stddev: stddev.pl
	${RM} -f $@
	${CP} $@.pl $@
	${CHMOD} +x $@

install: all
	${INSTALL} -c -m ${BINMODE} ${TARGETS} ${DESTBIN}

clean:

clobber: clean
	${RM} -f ${TARGETS}

# help
#
help:
	@echo make all
	@echo make install
	@echo make clobber

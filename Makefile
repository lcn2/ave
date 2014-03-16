#!/usr/bin/make
#
# ave - average, sum and other statistical filters
#
# @(#) $Revision: 1.6 $
# @(#) $Id: Makefile,v 1.6 2000/04/23 07:55:35 chongo Exp root $
# @(#) $Source: /usr/local/src/bin/ave/RCS/Makefile,v $
#
# Copyright (c) 1996,1999,2014 by Landon Curt Noll.  All Rights Reserved.
e
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

SHELL=/bin/sh
BINMODE=0555
DESTBIN=/usr/local/bin
INSTALL= install

TARGETS= ave plus stddev

# remote operations
#
THISDIR= ave
RSRCPSH= rsrcpush
RMAKE= rmake

all: ${TARGETS}

ave: ave.pl
	-rm -f $@
	cp $@.pl $@
	chmod +x $@

plus: plus.pl
	-rm -f $@
	cp $@.pl $@
	chmod +x $@

stddev: stddev.pl
	-rm -f $@
	cp $@.pl $@
	chmod +x $@

install: all
	${INSTALL} -c -m ${BINMODE} ${TARGETS} ${DESTBIN}

clean:

clobber: clean
	-rm -f ${TARGETS} 

# help
#
help:
	@echo make all
	@echo make install
	@echo make clobber
	@echo
	@echo make pushsrc
	@echo make pushsrcn
	@echo
	@echo make rmtall
	@echo make rmtinstall
	@echo make rmtclobber
	@echo
	@echo make univ

# push source to remote sites
#
pushsrc:
	${RSRCPSH} -v -x . ${THISDIR}

pushsrcq:
	@${RSRCPSH} -q . ${THISDIR}

pushsrcn:
	${RSRCPSH} -v -x -n . ${THISDIR}

# run make on remote hosts
#
rmtall:
	${RMAKE} -v ${THISDIR} all

rmtinstall:
	${RMAKE} -v ${THISDIR} install

rmtclean:
	${RMAKE} -v ${THISDIR} clean

rmtclobber:
	${RMAKE} -v ${THISDIR} clobber

# build, install, and cleanup everywhere
#
univ: all install clobber pushsrc rmtall rmtinstall rmtclobber

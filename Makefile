# %W% %G% %U%
#
# ave - average, sum and other statistical filters

SHELL=/bin/sh
BINMODE=0555
DESTBIN=/usr/local/bin
DESTLIB=/usr/local/lib
INSTALL=bsdinst

all: ave plus stddev

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
	${INSTALL} -c -m ${BINMODE} ave plus stddev  ${DESTBIN}

clean:

clobber: clean
	-rm -f ave plus stddev

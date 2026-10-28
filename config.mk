# st version
VERSION = 0.9.3

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

PKG_CONFIG = pkg-config

# includes and libs
# Use pkg-config for X11 too (portable across modern distros).
INCS = `$(PKG_CONFIG) --cflags x11 xft fontconfig freetype2`
LIBS = -lm -lrt -lutil \
       `$(PKG_CONFIG) --libs x11 xft fontconfig freetype2`

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os \
           $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = -s $(LIBS) $(LDFLAGS)

# compiler and linker
CC = cc
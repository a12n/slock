# slock version
VERSION = 1.4

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# includes and libs
INCS =
LIBS = -lc -lX11 -lXrandr
# LIBS += -lcrypt
LIBS += -lpam

# flags
CPPFLAGS += -DVERSION=\"${VERSION}\" -D_DEFAULT_SOURCE
# CPPFLAGS += -DHAVE_SHADOW_H
CPPFLAGS += -DHAVE_PAM
CFLAGS += -std=c99 -pedantic -Wall ${INCS} ${CPPFLAGS}
LDFLAGS += ${LIBS}
COMPATSRC = explicit_bzero.c

# On OpenBSD and Darwin remove -lcrypt from LIBS
#LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 -lXext -lXrandr
# On *BSD remove -DHAVE_SHADOW_H from CPPFLAGS
# On NetBSD add -D_NETBSD_SOURCE to CPPFLAGS
#CPPFLAGS = -DVERSION=\"${VERSION}\" -D_BSD_SOURCE -D_NETBSD_SOURCE
# On OpenBSD set COMPATSRC to empty
#COMPATSRC =

# compiler and linker
CC = cc

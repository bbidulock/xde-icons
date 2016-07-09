
AC_PREREQ(2.69)
AC_INIT([xde-icons],[1.2],[https://github.com/bbidulock/xde-icons],[xde-icons])
AC_REVISION([1.2])

AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_AUX_DIR([scripts])

AM_INIT_AUTOMAKE([gnits 1.14 dist-xz no-dist-gzip std-options -Wall color-tests silent-rules tar-pax])
AM_MAINTAINER_MODE

AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_MKDIR_P

test "x$prefix" = xNONE && prefix="$ac_default_prefix"
sharedir="$datadir"
eval "sharedir=\"$sharedir\""
eval "sharedir=\"$sharedir\""
eval "sharedir=\"$sharedir\""

AC_SUBST([sharedir])

iconsdir='$(datadir)/icons'
AC_SUBST([iconsdir])

pixmapsdir='$(datadir)/pixmaps'
AC_SUBST([pixmapsdir])

AC_CONFIG_FILES([Makefile
		 src/Makefile])
AC_OUTPUT

# vim: set ft=config:

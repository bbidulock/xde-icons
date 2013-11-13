
AC_PREREQ(2.69)
AC_INIT([xde-icons],[1.0.2],[bugs@openss7.org],[xde-icons])
AC_REVISION([1.0.2])

AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_AUX_DIR([scripts])
AC_CONFIG_MACRO_DIR([m4])

AM_INIT_AUTOMAKE([gnits 1.14 dist-xz no-dist-gzip std-options -Wall color-tests silent-rules tar-pax])
AM_MAINTAINER_MODE

AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_MKDIR_P

iconsdir='$(datadir)/icons'
AC_SUBST([iconsdir])

pixmapsdir='$(datadir)/pixmaps'
AC_SUBST([pixmapsdir])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT

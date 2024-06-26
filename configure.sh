#!/bin/bash

# need --enable-maintainer-mode to be able to run in place
#      must be disabled to build an installable package

# *FLAGS are what Arch Linux makepkg uses with the exception
#      that -Wall -Werror is added

case "`uname -m`" in
	i686)
		CPPFLAGS=""
		CFLAGS="-march=i686 -mtune=generic -O2 -pipe -fno-plt -fexceptions -Wp,-D_FORTIFY_SOURCE=3 -Wformat -Werror=format-security -fstack-clash-protection -fcf-protection -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"
		CXXFLAGS="$CFLAGS -Wp,-D_GLIBCXX_ASSERTIONS"
		LDFLAGS="-Wl,-O1 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,-z,pack-relative-relocs"
		LTOFLAGS="-flto=auto"
		DEBUG_CFLAGS="-g -ggdb -fvar-tracking-assignments"
		DEBUG_CXXFLAGS="$DEBUG_CFLAGS"
	;;
	x86_64)
		CPPFLAGS=""
		CFLAGS="-march=x86-64 -mtune=generic -O2 -pipe -fno-plt -fexceptions -Wp,-D_FORTIFY_SOURCE=3 -Wformat -Werror=format-security -fstack-clash-protection -fcf-protection -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"
		CXXFLAGS="$CFLAGS -Wp,-D_GLIBCXX_ASSERTIONS"
		LDFLAGS="-Wl,-O1 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,-z,pack-relative-relocs"
		LTOFLAGS="-flto=auto"
		DEBUG_CFLAGS="-g -ggdb -fvar-tracking-assignments"
		DEBUG_CXXFLAGS="$DEBUG_CFLAGS"
	;;
esac

./configure \
	--enable-maintainer-mode \
	CPPFLAGS="$CPPFLAGS" \
	CFLAGS="$DEBUG_CFLAGS -Wall -Wextra -Werror $CFLAGS" \
	CXXFLAGS="$DEBUG_CXXFLAGS -Wall -Wextra -Werror $CXXFLAGS" \
	LDFLAGS="$LDFLAGS" \
	LTOFLAGS="$LTOFLAGS" \
	DEBUG_CFLAGS="$DEBUG_CFLAGS" \
	DEBUG_CXXFLAGS="$DEBUG_CXXFLAGS"

# Fight unused direct deps
[ -f libtool ] && sed -i -e "s| -shared | $LDFLAGS\0 |g" libtool

# cscope target won't work without this
#
[ -f po/Makefile ] && echo -e '\n%:\n\t@:\n\n' >> po/Makefile

---
layout: default
---
[xde-icons -- read me first file.  2022-01-28]: #

xde-icons
===============

Package `xde-icons-1.7` was released under GPLv3 license
2022-01-28.

This is a set of icons, primarily window manager icons and icons for
shutdown and reboot of the system on logout, for the XDE (_X Desktop
Environment_).

Note that this package will not build with `librsvg-2.40.12`.

The source for `xde-icons` is hosted on [GitHub][1].


Release
-------

This is the `xde-icons-1.7` package, released 2022-01-28.
This release, and the latest version, can be obtained from [GitHub][1],
using a command such as:

    $> git clone https://github.com/bbidulock/xde-icons.git

Please see the [RELEASE][3] and [NEWS][4] files for release notes and
history of user visible changes for the current version, and the
[ChangeLog][5] file for a more detailed history of implementation
changes.  The [TODO][6] file lists features not yet implemented and
other outstanding items.

Please see the [INSTALL][8] file for installation instructions.

When working from `git(1)`, please use this file.  An abbreviated
installation procedure that works for most applications appears below.

This release is published under GPLv3.  Please see the license in the
file [COPYING][10].


Quick Start
-----------

The quickest and easiest way to get `xde-icons` up and
running is to run the following commands:

    $> git clone https://github.com/bbidulock/xde-icons.git
    $> cd xde-icons
    $> ./autogen.sh
    $> ./configure
    $> make
    $> make DESTDIR="$pkgdir" install

This will configure, compile and install `xde-icons` the
quickest.  For those who like to spend the extra 15 seconds reading
`./configure --help`, some compile time options can be turned on and off
before the build.

For general information on GNU's `./configure`, see the file
[INSTALL][8].


Running
-------

Read the manual page after installation:

    $> man xde-icons


Issues
------

Report issues on GitHub [here][2].



[1]: https://github.com/bbidulock/xde-icons
[2]: https://github.com/bbidulock/xde-icons/issues
[3]: https://github.com/bbidulock/xde-icons/blob/1.7/RELEASE
[4]: https://github.com/bbidulock/xde-icons/blob/1.7/NEWS
[5]: https://github.com/bbidulock/xde-icons/blob/1.7/ChangeLog
[6]: https://github.com/bbidulock/xde-icons/blob/1.7/TODO
[7]: https://github.com/bbidulock/xde-icons/blob/1.7/COMPLIANCE
[8]: https://github.com/bbidulock/xde-icons/blob/1.7/INSTALL
[9]: https://github.com/bbidulock/xde-icons/blob/1.7/LICENSE
[10]: https://github.com/bbidulock/xde-icons/blob/1.7/COPYING

[ vim: set ft=markdown sw=4 tw=72 nocin nosi fo+=tcqlorn spell: ]: #

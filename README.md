
## xde-icons

Package xde-icons-1.1.40 was released under GPL license .

This is a set of icons, primarily window manager icons and icons for
shutdown and reboot of the system on logout, for the XDE (X Desktop
Environment).

Note that this package will not build with librsvg-2.40.12.


### Release

This is the `xde-icons-1.1.40` package, released .  This release,
and the latest version, can be obtained from the GitHub repository at
https://github.com/bbidulock/xde-icons, using a command such as:

```bash
git clone https://github.com/bbidulock/xde-icons.git
```

Please see the [NEWS](NEWS) file for release notes and history of user visible
changes for the current version, and the [ChangeLog](ChangeLog) file for a more
detailed history of implementation changes.  The [TODO](TODO) file lists
features not yet implemented and other outstanding items.

Please see the [INSTALL](INSTALL) file for installation instructions.

When working from `git(1)', please see the [README-git](README-git) file.  An
abbreviated installation procedure that works for most applications
appears below.

This release is published under the GPL license that can be found in
the file [COPYING](COPYING).

### Quick Start:

The quickest and easiest way to get xde-icons up and running is to run
the following commands:

```bash
git clone https://github.com/bbidulock/xde-icons.git xde-icons
cd xde-icons
./autogen.sh
./configure --prefix=/usr
make V=0
make DESTDIR="$pkgdir" install
```

This will configure, compile and install xde-icons the quickest.  For
those who would like to spend the extra 15 seconds reading `./configure
--help`, some compile time options can be turned on and off before the
build.

For general information on GNU's `./configure`, see the file [INSTALL](INSTALL).

### Running xde-icons

Read the manual pages after installation:

    man xde-icons

### Issues

Report issues to https://github.com/bbidulock/xde-icons/issues.


Debian
====================
This directory contains files used to package mgcd/mgc-qt
for Debian-based Linux systems. If you compile mgcd/mgc-qt yourself, there are some useful files here.

## mgc: URI support ##


mgc-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install mgc-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your mgc-qt binary to `/usr/bin`
and the `../../share/pixmaps/mgc128.png` to `/usr/share/pixmaps`

mgc-qt.protocol (KDE)


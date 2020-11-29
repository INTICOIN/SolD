
Debian
====================
This directory contains files used to package soldd/sold-qt
for Debian-based Linux systems. If you compile soldd/sold-qt yourself, there are some useful files here.

## sold: URI support ##


sold-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install sold-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your sold-qt binary to `/usr/bin`
and the `../../share/pixmaps/sold128.png` to `/usr/share/pixmaps`

sold-qt.protocol (KDE)


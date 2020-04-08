# bbb-builds
Various BeagleBone Black (BBB) Builds maintained and used by SysPlay

Description of the various folders:

+ Images: Various pre-built images
+ Utils: Various utilities to play around with (including backup, restore, ...)
+ Toolchain: Toolchain Setup related stuff
+ Bootloader: Build framework for Bootloader like u-boot
+ OS: Build framework for OS like Linux
+ RootFS: Build framework for Root File System like ramdisk

+ Makefile: Top-level controlling file for the Build System

Various make options:

+ Install Toolchain
$ make install_toolchain

+ Install Dependent Libraries (Optional)
$ make install_libs

+ Install Build Essentials (Optional)
$ make install_pkgs

+ Build u-boot
$ make build_uboot

+ Build Linux
$ make build_linux

+ Build Root FS
$ make build_rootfs

+ Build u-boot, Linux, Root FS
$ make

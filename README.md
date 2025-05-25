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

+ Generate the Utils/prepare_usd script to prepare bootable uSD
$ make generate_prepare_usd

+ Install Toolchain
$ make install_toolchain

+ Install Build Essentials (Optional)
$ make install_pkgs

+ Build Uboot
$ make uboot

+ Build Linux
$ make linux

+ Build Root FS
$ make rootfs

+ Build Uboot, Linux, Root FS
$ make

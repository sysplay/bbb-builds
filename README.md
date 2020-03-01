# bbb-builds
Various BeagleBone Black (BBB) Builds maintained and used by SysPlay

Description of the various folders:

+ Images: Various pre-built images
+ Utils: Various utilities to play around with (including backup, restore, ...)
+ Toolchain: Toolchain Setup related stuff
+ Bootloader: u-boot Build related stuff (TBD)
+ Kernel: Linux Kernel Build related stuff (TBD)
+ RootFS: Root File System Build related stuff (TBD)

+ Makefile: Top-level controlling file for the Build System

Various make options:

+ Install Toolchain
$ make install_toolchain

+ Install Dependent Libraries (Optional)
$ make install_libs

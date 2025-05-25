#!/bin/bash

#IMAGE=core-image-minimal
IMAGE=core-image-full-cmdline
#IMAGE=core-image-weston
#IMAGE=core-image-sato # x11 based mobile environment
# Toolchain etc
#IMAGE=meta-toolchain
#IMAGE=meta-ide-support

USD=/dev/sdb # Change it as per the actual device

if [ `id -u` != 0 ]
then
	echo "You need root privileges to run this script"
	exit 1
fi

echo -n "You are going to lose your data in ${USD}. Continue? [y|N]: "
read resp
if [ "${resp}" != "y" ]
then
	echo "Aborting ... done."
	exit 2
fi

dd if=build/tmp/deploy/images/beaglebone-yocto/${IMAGE}-beaglebone-yocto.wic of=${USD} bs=4M

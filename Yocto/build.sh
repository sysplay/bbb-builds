#!/bin/bash

#IMAGE=core-image-minimal
IMAGE=core-image-full-cmdline
#IMAGE=core-image-weston
#IMAGE=core-image-sato # x11 based mobile environment
# Toolchain etc
#IMAGE=meta-toolchain
#IMAGE=meta-ide-support

. poky/oe-init-build-env
MACHINE="beaglebone-yocto" bitbake ${IMAGE}

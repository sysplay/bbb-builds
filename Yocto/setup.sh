#!/bin/bash

# Install required packages
sudo urpmi chrpath diffstat lz4 rpcgen

# Get the yocto sources
git clone -b kirkstone https://git.yoctoproject.org/git/poky

# Initialize the build environment - this creates & takes into the build directory
. poky/oe-init-build-env

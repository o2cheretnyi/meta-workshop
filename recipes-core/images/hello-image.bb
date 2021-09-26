DESCRIPTION = "This is our first custom 'hello world' Yocto image"
LICENSE = "MIT"
SECTION = "images"

# Core files for basic console boot
IMAGE_INSTALL = "packagegroup-core-boot"

# Add our desired packages
IMAGE_INSTALL += "psplash dropbear"

inherit core-image
IMAGE_ROOTFS_SIZE ?= "8192"

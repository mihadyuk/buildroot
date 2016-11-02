#!/bin/sh
SD="$1"

#use debian config mke2fs 1.42.12 (29-Aug-2014)
#instead of archlinux mke2fs 1.43.3 (04-Sep-2016).
#it solves issue when uboot does not recognize ext4 partition
#if the partition created on archlinux mke2fs 1.43.3 (04-Sep-2016).
#disabling 64bit (-O ^64bit) solves the issue.

#look at git://git.denx.de/u-boot.git 6f94ab6656ceffb3f2a972c8de4c554502b6f2b7
#ext4: Refuse to mount filesystems with 64bit feature set
#
#With e2fsprogs after 1.43 the 64bit and metadata_csum features are
#enabled by default.  The metadata_csum feature changes how
#ext4_group_desc->bg_checksum is calculated, which would break write
#support.  The 64bit feature however introduces changes such that it
#cannot be read by implementations that do not support it.  Since we do
#not support this, we must not mount it.

#Cc: Stephen Warren <swarren@nvidia.com>
#Cc: Simon Glass <sjg@chromium.org>
#Cc: Lukasz Majewski <l.majewski@samsung.com>
#Cc: Stefan Roese <sr@denx.de>
#Reported-by: Andrew Bradford <andrew.bradford@kodakalaris.com>
#Signed-off-by: Tom Rini <trini@konsulko.com>
#
#Hence the uboot does not support 64bit ext4 partitions.

#sudo mkfs.ext4 -v -O ^large_file,^64bit,uninit_bg "$SD"
mkfs.ext4 -v -O ^64bit "$SD"

#export MKE2FS_CONFIG=$(pwd)/debian-mke2fs.conf
#sudo mkfs.ext4 -v "$SD"

#!/bin/bash
SD="$1"

#use debian config mke2fs 1.42.12 (29-Aug-2014)
#instead of archlinux mke2fs 1.43.3 (04-Sep-2016).
#it solves issue when uboot does not recognize ext4 partition
#if the partition created on archlinux.

sudo mkfs.ext4 -v -O ^large_file,^64bit,uninit_bg "$SD"

#export MKE2FS_CONFIG=$(pwd)/debian-mke2fs.conf
#sudo mkfs.ext4 -v "$SD"

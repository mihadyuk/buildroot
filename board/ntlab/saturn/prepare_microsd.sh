#!/bin/bash

#prepare microsd for boot. Before startting create two partiotions on microsd.

#copy linux onto boot partition
sudo mkfs.ext4 /dev/sdb1
sudo mount /dev/sdb1 /mnt
#sudo rm -R /mnt/*
sudo tar xf images/rootfs.tar -C /mnt
sudo cp flash_emmc_linux.sh /mnt/root
sudo cp flash_emmc_uboot.sh /mnt/root
sudo umount /mnt

#copy linux onto second partition to be flashed into onboard eMMC.
sudo mount /dev/sdb2 /mnt
sudo cp images/rootfs.ext2 /mnt
sudo umount /mnt


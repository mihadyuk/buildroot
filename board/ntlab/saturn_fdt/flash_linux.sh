#!/bin/bash
#sudo dd if=images/rootfs.ext2 of=/dev/sdb1 conv=noerror,sync
#sudo mkfs.ext4 /dev/sdb1
#./flash_linux.sh /dev/sdb1
SD=$1

sudo mount "$SD" /mnt || exit $?

sudo rm -R /mnt/*
sudo tar xf images/rootfs.tar -C /mnt
sudo cp flash_emmc_linux.sh /mnt/root
sudo cp flash_emmc_uboot.sh /mnt/root

sudo umount /mnt

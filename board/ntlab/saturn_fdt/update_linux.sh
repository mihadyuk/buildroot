#!/bin/bash
rm -f images/uImage images/rootfs.ext2 images/rootfs.ext4 images/rootfs.tar
#make linux-reconfigure
make linux-rebuild
make



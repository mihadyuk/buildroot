#!/bin/bash

function remove-uboot() {
         rm -f images/u-boot.imx images/uboot-env.bin
}


wandboard_file=wandboard.c
wandboard_fullpath=build/uboot-saturn/board/wandboard
wandboard_fullpath_file=$wandboard_fullpath/$wandboard_file
echo $wandboard_file
echo $wandboard_fullpath_file

#backup the wandboard.c file
cp $wandboard_fullpath_file /tmp/

#apply patch to change settings for eMMC and rebuild
patch $wandboard_fullpath_file 0001-saturn-Changed-config-to-use-on-eMMC.patch
remove-uboot
make uboot-rebuild

#save emmc u-boot version
mv images/u-boot.imx images/u-boot-emmc.imx

#restore original file
cp /tmp/$wandboard_file $wandboard_fullpath
rm /tmp/$wandboard_file


#make uboot for microsd card
remove-uboot
make uboot-rebuild


#make

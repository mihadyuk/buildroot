#!/bin/bash
#dst_dir=/home/user/build/output-saturn
dst_dir=$1

function copy() {
   echo "copying $1 to $2"
   cp $1 $2
}

copy flash_emmc_linux.sh $dst_dir
copy flash_emmc_uboot.sh $dst_dir
copy flash_linux.sh $dst_dir
copy flash_uboot.sh $dst_dir
copy prepare_microsd.sh $dst_dir
copy update_linux.sh $dst_dir
copy update_uboot.sh $dst_dir
copy S01mount-second-drive.sh $dst_dir
copy fetch-log.sh $dst_dir
copy format-ext4.sh $dst_dir
#copy *.patch $dst_dir
patch_dir="$dst_dir"/patches
mkdir -p "$patch_dir"
echo "copying 'patches/u-boot' to '$patch_dir'"
cp -R patches/u-boot "$patch_dir"

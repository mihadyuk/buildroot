#!/bin/bash
dst_dir=/home/user/workspace/buildroot-ntl/output-saturn

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
copy *.patch $dst_dir

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
copy flash_linux_kernel.sh $dst_dir
copy flash_uboot.sh $dst_dir
copy prepare_microsd.sh $dst_dir
copy update_linux.sh $dst_dir
copy update_uboot.sh $dst_dir
copy S01mount-second-drive.sh $dst_dir
copy run-kexec.sh $dst_dir
copy S99run-kexec.sh $dst_dir
copy mount-fs.sh $dst_dir
copy mount-tracing.sh $dst_dir
copy dump-vmcore.sh $dst_dir
copy fetch-log.sh $dst_dir
copy *.patch $dst_dir

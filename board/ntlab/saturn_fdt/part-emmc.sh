#!/bin/sh
#http://superuser.com/questions/332252/creating-and-formating-a-partition-using-a-bash-script

#firts part is about 500M
emmc_disk=/dev/mmcblk1
part1_num=1
part1_start=4032
part1_end=1004095
part2_num=2
part2_start=1004096
part2_end=

#usb 16GB flash
#part1_start=4032
#part1_end=1028095
#part2_start=1028096
#part2_end=

(
echo o #create new empty dos partition
echo n # add new partition
echo p #primary partition
echo "$part1_num" #part number
echo "$part1_start"  # first sector
echo "$part1_end"    # last sector
echo n # add new partition
echo p #primary partition
echo "$part2_num" #part number
echo "$part2_start"  # first sector
echo "$part2_end"    # last sector
echo w # save changes
) | fdisk "$emmc_disk"
retval=$?
if [ "$retval" -ne 0 ];then
   exit "$retval"
fi

./format-emmc-ext4.sh "$emmc_disk"p"$part1_num"
./format-emmc-ext4.sh "$emmc_disk"p"$part2_num"
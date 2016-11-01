#!/bin/bash
#http://superuser.com/questions/332252/creating-and-formating-a-partition-using-a-bash-script
SD="$1"
part_num=1
(
echo o #create new empty dos partition
echo n # add new partition
echo p #primary partition
echo "$part_num" #part number
echo   # first sector (default 2048)
echo   # last sector
echo w # save changes
) | sudo fdisk "$SD"
retval=$?
if [ "$retval" -ne 0 ]; then
    exit "$retval"
fi

./format-ext4.sh "$SD""$part_num"
#!/bin/sh
part1_start=4032
part1_end=1004095
part2_start=1004096
part2_end=

#usb 16GB flash
#part1_start=4032
#part1_end=1028095
#part2_start=1028096
#part2_end=


SD="$1"
(
echo o #create new empty dos partition
echo n # add new partition
echo p #primary partition
echo 1 #part number
echo "$part1_start"  # first sector
echo "$part1_end"    # last sector
echo n # add new partition
echo p #primary partition
echo 2 #part number
echo "$part2_start"  # first sector
echo "$part2_end"    # last sector
echo w # save changes
) | sudo fdisk "$SD"
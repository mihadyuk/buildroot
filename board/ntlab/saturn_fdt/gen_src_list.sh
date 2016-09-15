#!/bin/bash

#create list of all sources files with their checksums
#and copy into csv file.
function filelist()
{
        prev_dir=`pwd`
	cd $1
        outfile=$2
        for F in `find -type f | xargs -n1`;
	do
		SIZE=`du -sb $F | awk '{print $1}'`
		NAME=`basename $F`
                CHECKSUM=`md5sum $F | awk '{print $1}'`
		echo $NAME\;$SIZE\;$CHECKSUM\; >> $2
	done
        cd $prev_dir
}

ROOT_DIR=`pwd`
OUT_DIR=$ROOT_DIR/output

#clean out dir
rm -rf $OUT_DIR
mkdir $OUT_DIR

outfile=$OUT_DIR/filelist.csv
touch $outfile


filelist output-saturn $outfile
filelist output-saturn/images $outfile




#!/bin/bash

#create list of all sources files with their checksums
#and copy into csv file.
#take a look how to iterate over files correct.
#https://github.com/koalaman/shellcheck/wiki/SC2044
function filelist()
{
        prev_dir=$(pwd)
	cd "$1" || exit
        outfile=$2
        find -type f ! -name "$(printf "*\n*")" > tmp
        while IFS= read -r F
	do
		SIZE=$(du -sb "$F" | awk '{print $1}')
		NAME=$(basename "$F")
                CHECKSUM=$(md5sum "$F" | awk '{print $1}')
		echo "$NAME"\;"$SIZE"\;"$CHECKSUM"\; >> "$2"
	done < tmp
        rm tmp
        cd "$prev_dir" || exit
}

ROOT_DIR=$(pwd)
OUT_DIR=$ROOT_DIR/output

#clean out dir
rm -rf "$OUT_DIR"
mkdir "$OUT_DIR"

outfile=$OUT_DIR/filelist.csv
touch "$outfile"


filelist output-saturn "$outfile"
filelist output-saturn/images "$outfile"




#!/bin/bash

TARGET_DIR=$1

for file in *; 
do 
	chkFile="$TARGET_DIR/$file"
	if [ ! -e $chkFile ]
	then
		echo "$chkFile does not exist" 
	else
		echo "$chkFile exists!"
	fi
done


#!/bin/bash

for file in *; 
do 
	chkFile="/Users/rob/ws/ehr-ipad/$file"
	if [ ! -e $chkFile ]
	then
		echo "$chkFile does not exist" 
	else
		echo "$chkFile exists!"
	fi
done


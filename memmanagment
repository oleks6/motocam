#!/bin/bash

# Calculates used space in bytes
usedspace=$(sudo du -c /media/usb/rearCamera | tail -n1 | cut -f1)
# Sets max size for the folder
maxsize=7000
# Percent
percent=100
# Used space percentage as %
usedspacepercentage=$(($usedspace*$percent/$maxsize))
echo $usedspacepercentage, $usedspace, $percent, $maxsize
maxusagepercentage=98
if [ "$usedspacepercentage" -ge "$maxusagepercentage" ]; then
	echo First loofif
	removethreshold=70
	while [ $removethreshold -le $usedspacepercentage ]; do
		echo Whileloop
		ls /media/usb/rearCamera | sort -r | tail -n3 | sudo xargs rm
	done
fi
echo DONEIIIIIIIIIII

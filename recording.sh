#!/bin/bash
COUNTER=0
	while [  $COUNTER -lt 1 ]; do
		now=$(date +"%Y%m%d%H%M%S")
		sudo ffmpeg -f v4l2 -framerate 30 -video_size 864x480 -i /dev/video0 /media/usb/rearCamera/$now.avi
		let COUNTER=COUNTER+1 
	done

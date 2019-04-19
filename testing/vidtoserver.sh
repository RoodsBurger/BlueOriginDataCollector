#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

raspivid -o $1-$DATE.h264 -t $2 -w 1920 -h 1080 -fps 30
MP4Box -add $1-$DATE.h264 $1-$DATE.mp4
rm $1-$DATE.h264
scp $1-$DATE.mp4 $4@$3:~/Desktop
rm $1-$DATE.mp4

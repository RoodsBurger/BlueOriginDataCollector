#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

raspistill -o $1-$DATE.jpg
scp $1-$DATE.jpg $3@$2:~/Desktop
rm $1-$DATE.jpg

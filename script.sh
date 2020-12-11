#!/bin/sh

current=`date +%s`
last_modified=`stat -c "%Y" file`
four_hours=14400


if [ $(($current-$last_modified)) -gt $four_hours ]; then 
    echo "TRUE"; 
else 
    echo "FALSE"; 
fi
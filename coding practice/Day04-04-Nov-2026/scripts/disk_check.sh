#!/bin/bash

THRESHOLD=80
LOG="/home/lavesh/linux-scripting/disk.log"

usage=$(df -h / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "$(date) - Disk usage: ${usage}%" >> "$LOG"

if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "$(date) - WARNING: Disk usage high: ${usage}%" >> "$LOG"
fi


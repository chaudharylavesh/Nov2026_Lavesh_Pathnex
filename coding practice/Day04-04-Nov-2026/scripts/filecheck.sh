#!/bin/bash

file="pathnex.sh"

if [ -f "$file" ]; then
	echo "script found"
	exit 0
else 
	echo "script not found"
	exit 1
fi

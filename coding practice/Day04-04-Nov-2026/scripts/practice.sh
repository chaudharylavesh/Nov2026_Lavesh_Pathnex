#!/bin/bash

greet() {
	local who="$1"
	echo "Hello, $who"
}

for person in Lavesh Rahul Amit; do 
	greet "$person"
done

count=1

while [ "$count" -le 3 ]; do
	echo "Practice number: $count"
	count=$((count + 1))
done

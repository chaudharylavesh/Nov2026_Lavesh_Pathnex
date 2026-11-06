#!/bin/bash

name="Lavesh"
course="DevOps"

echo "Hello $name"
echo "Welcome to $course"

echo "First line" > output.txt
echo "Second line" >> output.txt

echo "Reading output file"
cat output.txt

echo "Script completed!"


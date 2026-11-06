#!/bin/bash

log="sample.log"
out="error_report.txt"

grep -i "error" "$log" | tail -n 20 > "$out"

echo "Saved report to: $out"


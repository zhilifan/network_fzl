#!/bin/bash
counter=1
for bri in $(seq 1 20); do
    echo "interface bri $bri"
    echo "link-a mode d"
    echo " quit"
    ((counter++))
done

#!/bin/bash
counter=1
sta=1
end=20
for bri in $(seq $sta $end); do
    echo "interface bri $bri"
    echo "link-a mode d"
    echo " quit"
    ((counter++))
done

echo "int ran "

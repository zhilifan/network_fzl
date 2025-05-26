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

for int in $(seq $sta $end); do
    echo "interface ran ten 1/0/$int ten 2/0/$int "
    echo "p l g $int"
    echo " quit"
    ((counter++))
done

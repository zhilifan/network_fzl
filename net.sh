#!/bin/bash
counter=1
sta=1
end=40
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

echo  "int range bri $sta to bri $end "
cat <<EOF
port link-type trunk
undo port trunk permit vlan 1
port trunk permit vlan 200 290 300 390 400 to 401 600 700
link-aggregation mode dynamic
stp root-protection
EOF


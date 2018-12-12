#!/bin/bash

clear

for ((i=2 ; $i<41; i=$i+1)); do
    if [ $(($i%2)) -eq 0 ]; then
        echo -n "$i "
    fi
done

echo ""
#!/bin/bash
clear

a=$(ls -l | grep "^-")
lineas= $($a | wc -l)
b=$(cut -d " " -f4)

echo $a

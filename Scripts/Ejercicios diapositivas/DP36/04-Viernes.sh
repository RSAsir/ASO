#!/bin/bash
clear

dia=$(date +%a)

if [ $dia != "vie" ]; then
    echo "No es viernes."
else
    echo "Es viernes."
fi
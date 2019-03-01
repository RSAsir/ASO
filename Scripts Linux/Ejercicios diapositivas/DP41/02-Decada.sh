#!/bin/bash

clear

echo -n "Introduzca su edad: "
read edad

ano=$(date +%Y)
decada=$(($ano - $edad))
clear

echo "Tienes $edad años."
if [ $decada -lt 1950 ]; then
    echo "Decada de los 40 o anterior."
elif [ $decada -lt 1960 ]; then
    echo "Decada de los 50."
elif [ $decada -lt 1970 ]; then
    echo "Decada de los 60."
elif [ $decada -lt 1980 ]; then
    echo "Decada de los 70."
elif [ $decada -lt 1990 ]; then
    echo "Decada de los 80."
elif [ $decada -lt 2000 ]; then
    echo "Decada de los 90."
elif [ $decada -lt 2010 ]; then
    echo "Decada del 2000."
else
    echo "Rango no calculado."
fi
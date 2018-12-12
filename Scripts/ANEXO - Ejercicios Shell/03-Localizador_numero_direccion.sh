#!/bin/bash
clear

if [ -e ~/telef ] && [ -e ~/direc ]; then
    read -p "Determine el nombre:" nombre

    if [ -z $(cat ~/telef | grep ^$nombre) ]; then
        echo "No existe nadie con ese nombre."
        exit
    fi

    read -p "Determine el apellido:" apellido

    if [ -z $(cat ~/telef | grep $apellido | cut -d ":" -f 2) ]; then
        echo "No existe nadie con ese apellido."
        exit
    fi

    outnom=$(cat ~/telef | grep $apellido | cut -d ":" -f 1)
    outape=$(cat ~/telef | grep $apellido | cut -d ":" -f 2)
    outtel=$(cat ~/telef | grep $apellido | cut -d ":" -f 3)
    outdir=$(cat ~/direc | grep $apellido | cut -d ":" -f 4)
    echo "$outnom:$outape:$outtel:$outdir"
else
    echo "Los ficheros de telefono y direcciones no existen."
fi
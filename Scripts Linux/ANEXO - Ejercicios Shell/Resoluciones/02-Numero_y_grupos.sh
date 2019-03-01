#!/bin/bash
clear

if [ -z $1 ]; then
    echo "No se ha introducido un usuario."
    exit
fi

if [ -z $(cat /etc/group | grep -w ^$1) ]; then
    echo "El usuario no existe."
    exit
fi

echo "El usuario $1 tiene la siguiente id:"
echo `id -u $1`

echo

echo "Ha sido encontrado en el siguiente numero de grupos:"
echo `grep -w $1 /etc/group | wc -l` # El parametro -w localiza la cadena exacta.


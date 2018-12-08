#!/bin/bash
clear

#CONTROLAR CADENA VACIA Y SI EL USUARIO EXISTE
echo "El usuario $1 tiene la siguiente id:"
echo `id -u $1`

echo

echo "Ha sido encontrado en el siguiente numero de grupos:"
echo `grep -w $1 /etc/group | wc -l` # El parametro -w localiza la cadena exacta.


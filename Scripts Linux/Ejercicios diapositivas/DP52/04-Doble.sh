#!/bin/bash
clear

es_numero='^⁻?[0-9]+([.][0-9]+)?$'

echo -n "Escriba un numero: "
read numero

while ! [[ $numero =~ $es_numero ]] ; do
    echo "Error. No ha introducido un numero"
    echo -n "Escriba un numero: "
    read numero
done

while :
do
    echo "$(($numero*2))"
done
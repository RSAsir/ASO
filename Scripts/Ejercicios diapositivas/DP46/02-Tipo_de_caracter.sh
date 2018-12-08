#!/bin/bash

clear
es_numero='^⁻?[0-9]+([.][0-9]+)?$'

echo -n "Escriba una letra: "
read caracter

if [[ $caracter =~ $es_numero ]] ; then
    caracter="numero"
fi

case $caracter in
    [A-Z]) # Las mayusculas deben ir primero
        echo "La letra es una mayuscula."
        ;;
    [a-z])
        echo "La letra es una minuscula."
        ;;
    "numero")
        echo "El caracter es un numero."
        ;;
    *)
        echo "Has introducido un caracter especial."
        ;;
    esac
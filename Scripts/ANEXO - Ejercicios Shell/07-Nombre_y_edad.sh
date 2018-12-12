#!/bin/bash

clear
es_numero='^⁻?[0-9]+([.][0-9]+)?$'
es_cadena='^[a-zA-Z]+[a-zA-Z]+?$'

# INPUT DE DATOS Y CONTROL DE ERRORES
read -p "Determine el nombre:" nombre # Lectura nombre

while ! [[ $nombre =~ $es_cadena ]]  ; do # SI NO SE CUMPLE EL PATRON DE LA VARIABLE DADA...
    echo "Error. No ha introducido un nombre"
    echo -n "Escriba un nombre: "
    read nombre
done

read -p "Determine la edad:" edad # Lectura edad

while ! [[ $edad =~ $es_numero ]] ; do # SI NO SE CUMPLE EL PATRON DE LA VARIABLE DADA...
    echo "Error. No ha introducido un numero"
    echo -n "Escriba la edad: "
    read edad
done

# OUTPUT DE DATOS
if [ $edad -lt 6 ] || [ $edad -gt 100 ]; then
    echo "Menor de 6 o mayor de 100"
fi

if [ $edad -lt 15 ]; then
    echo "Menor de 15"
fi

if [ $edad -lt 40 ]; then
    echo "Menor de 40"
fi

if [ $edad -lt 70 ]; then
    echo "Menor de 70"
fi

if [ $edad -gt 71 ] && [ $edad < 99 ]; then
    echo "Entre 71 y 99"
fi
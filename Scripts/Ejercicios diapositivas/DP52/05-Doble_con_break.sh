#!/bin/bash
clear
bu=0
es_numero='^⁻?[0-9]+([.][0-9]+)?$'

echo -n "Escriba un numero: "
read numero

# Comprobacion input

while ! [[ $numero =~ $es_numero ]] ; do
    echo "Error. No ha introducido un numero"
    echo -n "Escriba un numero: "
    read numero
done

# Bucle infinito

while : ;
do
    echo "$(($numero*2))"

    # break
    if [ $bu -ne 1 ]; then
        break
    fi
done
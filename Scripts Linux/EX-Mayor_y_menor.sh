#!/bin/bash
clear
#Lectura de valores
    read -p "Introduzca el primer valor: " n1
    clear
    read -p "Introduzca el segundo valor valor: " n2
    clear

#Ordenacion
    if [ $n1 -eq $n2 ]; then
        echo "El primer y el segundo numero son iguales."
    else
        if [ $n1 -lt $n2 ]; then
            echo "$n2 es el numero mayor."
        else
            echo "$n1 es el numero mayor."
        fi
    fi

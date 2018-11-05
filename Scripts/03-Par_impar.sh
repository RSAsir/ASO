#!bin/bash
clear
#Lectura de valores
    read -p "Introduzca un numero: " n1
    clear

#Ordenacion
    if [ $n1 -eq 0 ]; then
        echo "0 es un numero par"
    else
        if [ $(($n1 % 2)) -eq 0 ]; then
                echo "$n1 es par."
        else
                echo "$n1 es impar."
        fi
    fi

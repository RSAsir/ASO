#!/bin/bash
clear
#Lectura de valores
    read -p "Introduzca su numero de hijos: " n1
    clear

#Numero de hijos
    if [ $n1 -eq 0 ]; then
        echo "No tiene hijos."
    else
        if [ $n1 -eq 1 ]; then
                echo "Tiene un hijo."
        else
            if [ $n1 -eq 2 ]; then
                echo "Tiene dos hijos."
            else
                if [ $n1 -eq 3 ]; then
                    echo "Tiene tres hijos"
                else
                    echo "Tiene mas de tres hijos"
                fi
            fi
        fi
    fi
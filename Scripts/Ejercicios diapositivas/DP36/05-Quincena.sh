#!/bin/bash
clear

# Version obteniendo el dia con comando.
#    dia=$(date +%d)
#
#   if [ $dia -le 15 ]; then
#        echo "Estamos en la primera quincena del mes."
#    else
#        echo "Estamos en la segunda quincena del mes."
#    fi

# Version de input de usuario

    echo -n "Determine el dia del mes: " # -n controla el salto de linea
    read dia

    if [ $dia -le 15 ]; then
        echo "Estamos en la primera quincena del mes."
    else
        echo "Estamos en la segunda quincena del mes."
    fi
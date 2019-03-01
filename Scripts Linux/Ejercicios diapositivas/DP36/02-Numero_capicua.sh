#!/bin/bash
clear
#Lectura de valores
    read -p "Introduzca un numero: " numero #-n3
    clear

#Capicua

    #Obtencion de variables

        #Obtencion del numero de la centena
            n2=$(($numero / 100))

        #Obtencion del numero de la unidad
            #Cambiamos el numero de la unidad por un 0
                n3=$(($numero / 10)) #$(($numero % 10))
                n4=$(($n3 * 10))

            #Obtenemos el valor
                n5=$(($numero - $n4))

    #Comparacion de la centena con la unidad
    if [ $n2 -eq $n5 ]; then
        echo "El numero es capicua."
    else
        echo "El numero no es capicua."
    fi

#!/bin/bash
clear

# GENERACION DEL NUMERO ALEATORIO
secreto=$(($RANDOM % 50 + 1)) # Un numero entre el 1 y el 50.
es_numero='^⁻?[0-9]+([.][0-9]+)?$'

# INPUT DE DATOS
read -p "Determine un numero (1-50): " numero 
echo "Escriba \"salir\" para dejar el programa."

# BUCLE
until [ $numero = $secreto ]; do # Se ejecuta hasta que el numero introducido coincida con el secreto.
    if [ $numero = "salir" ]; then # Comando de salida
        exit
    fi
    clear

    while ! [[ $numero =~ $es_numero ]] ; do # Control para numeros
            echo "Error. No ha introducido un numero"
            echo -n "Escriba un numero: "
            read numero
            clear

            if [ $numero = "salir" ]; then
                exit
            fi
    done

    while [ $numero -gt 50 ] || [ $numero -lt 1 ] ; do # Control para rangos
            echo "El numero esta fuera del rango."
            echo -n "Escriba un numero: "
            read numero
            clear

            if [ $numero = "salir" ]; then
                exit
            fi

            while ! [[ $numero =~ $es_numero ]] ; do # Nuevo control para numeros con el fin de evitar que falle el rango.
                echo "Error. No ha introducido un numero"
                echo -n "Escriba un numero: "
                read numero
                clear

                if [ $numero = "salir" ]; then
                    exit
                fi
            done
    done
        if [ $numero -gt $secreto ]; then # Output de informacion.
            echo "El numero es menor."
        else
            echo "El numero es mayor."
        fi

        read -p "Determine un numero (1-50): " numero 
        echo "Escriba \"salir\" para dejar el programa."
        clear
done


echo "Has acertado."
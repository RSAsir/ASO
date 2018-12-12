#!/bin/bash
clear

es_numero='^⁻?[0-9]+([.][0-9]+)?$'

# FUNCIONES

function suma() {
    n3=$(echo "scale=2; $n1+$n2" | bc -l)
    echo "Resultado: $n3"
}

function resta() {
    return $(echo "scale=2; $n1-$n2" | bc -l)
}

# ------------------------------------------------------------------------


read -p "Determine el primer valor: " n1
while ! [[ $n1 =~ $es_numero ]] ; do # Control para el primer numero
    echo "Error. No ha introducido un numero"
    echo -n "Escriba un numero: "
    read n1
    clear
done
clear

read -p "Determine el segundo valor: " n2
while ! [[ $n2 =~ $es_numero ]] ; do # Control para el segundo numero
    echo "Error. No ha introducido un numero"
    echo -n "Escriba un numero: "
    read n2
    clear
done
clear

# Operaciones que se pueden realizar
echo "** OPERACIONES DISPONIBLES **"
echo "1) Suma"
echo "2) Resta"
echo "3) Multiplicacion"
echo "4) Division"
echo "5) Potencia"
echo "6) Salir"

read -p "Seleccione la operacion a realizar: " operacion
clear

while ! [[ $operacion =~ $es_numero ]] ; do # Control para opciones
    echo "Error. No ha introducido un numero"
    echo "Operacion no reconocida."
    echo ""
    echo ""
    echo "** OPERACIONES DISPONIBLES **"
    echo "1) Suma"
    echo "2) Resta"
    echo "3) Multiplicacion"
    echo "4) Division"
    echo "5) Potencia"
    echo "6) Salir"
    read -p "Seleccione la operacion a realizar: " operacion
    clear
done

# CONTROL DEL RANGO DE OPCIONES
# Ejecuta un control de numeros antes de cerrar para que no cause error
# en caso de que lo que se introduzca sea una letra.
while [ ! $operacion -eq 1 ] && [ ! $operacion -eq 2 ] && [ ! $operacion -eq 3 ] && [ ! $operacion -eq 4 ] && [ ! $operacion -eq 5 ] && [ ! $operacion -eq 6 ]; do
    echo "Operacion no reconocida."
    echo ""
    echo ""
    echo "** OPERACIONES DISPONIBLES **"
    echo "1) Suma"
    echo "2) Resta"
    echo "3) Multiplicacion"
    echo "4) Division"
    echo "5) Potencia"
    echo "6) Salir"
    read -p "Seleccione la operacion a realizar: " operacion
    clear
    while ! [[ $operacion =~ $es_numero ]] ; do # Control para numeros
        echo "Error. No ha introducido un numero"
        echo "Operacion no reconocida."
        echo ""
        echo ""
        echo "** OPERACIONES DISPONIBLES **"
        echo "1) Suma"
        echo "2) Resta"
        echo "3) Multiplicacion"
        echo "4) Division"
        echo "5) Potencia"
        echo "6) Salir"
        read -p "Seleccione la operacion a realizar: " operacion
        clear
    done
done

# Output
echo "Primer valor: $n1"
echo "Segundo valor: $n2"
echo ""

case $operacion in
    1)
        suma $n1 $n2
        ;;
    2)
        resta $n1 $n2
        echo "Resultado: $?"
        ;;
    3) 
        n3=$(echo "scale=2; $n1*$n2" | bc -l)
        echo "Resultado: $n3"
        ;;
    4)
        if [ $n2 -eq 0 ]; then
            echo "No se puede dividir por 0."
        else
            n3=$(echo "scale=2; $n1/$n2" | bc -l)
            echo "Resultado: $n3"
        fi
        ;;
    5)
        n3=$(echo "scale=2; $n1**$n2" | bc -l)
        echo "Resultado: $n3"
        ;;
    6)
        exit
        ;;
esac


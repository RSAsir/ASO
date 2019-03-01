#!/bin/bash

clear

echo "MENU DE OPCIONES:"
echo
echo "Si lo introducido no es un numero, se producira un error."
echo

select option in Continuar Finalizar
do
    if [ $option = "Finalizar" ] 2>/dev/null ;then
        break
    elif [ $option = "Continuar" ] 2>/dev/null ;then
        echo "Continuacion del codigo."
    else
        echo "Opcion no valida."
    fi
done


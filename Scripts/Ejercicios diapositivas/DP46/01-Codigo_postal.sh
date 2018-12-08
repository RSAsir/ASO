#!/bin/bash

clear

# No se añadiran las 52 provincias, solo la estructura base del programa.

echo -n "Escriba los dos primeros digitos de su codigo postal: "
read digito

case $digito in
    01)
        echo "Alava."
        ;;
    02)
        echo "Albacete."
        ;;
    *) 
        echo "Fuera de rango."
        ;;
esac
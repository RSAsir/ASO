#!/bin/bash

clear

echo "Escriba el mes actual (todo en minusculas y sin tilde): "
read mes

if [ $mes = "abril" ] || [ $mes = "junio" ] || [ $mes = "septiembre" ] || [ $mes = "noviembre" ]; then
    echo "El mes tiene 30 dias."
elif [ $mes = "enero" ] || [ $mes = "marzo" ] || [ $mes = "mayo" ] || [ $mes = "julo" ] || [ $mes = "agosto" ] || [ $mes = "octubre" ] || [ $mes = "diciembre" ]; then
    echo "El mes tiene 31 dias."
elif [ $mes = "febrero" ]; then
    echo "El mes tiene 28 dias."
else
    echo "Formato de mes incorrecto o mes no reconocido."
fi
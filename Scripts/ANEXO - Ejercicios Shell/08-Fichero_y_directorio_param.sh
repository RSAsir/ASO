#!/bin/bash
clear

# NECESARIAS ALGUNAS CORRECCIONES (CONTROL DE SUBDIRECTORIOS)

if [ -z $1 ]; then # Comprobacion de que se ha pasado un parametro
    echo "No se ha pasado ningun parametro"
    exit
fi

if [ -z $(ls ./ | grep ^$1$) ]; then # Comprobacion de que existe algo con ese nombre.
    echo "$1 no existe."

else
    if [ ! -e $(ls ./ | grep ^$1$) ]; then # Comprovacion de que es un archivo/fichero.
        echo "$1 no es un fichero"

        if [ -d $(ls ./ | grep ^$1$) ]; then # Comprovacion de que es un directorio.
            if [ -z $(ls ./$1) ];then # Comprovacion del contenido
                echo "$1 es un directorio y esta vacio."
            else
                echo "$1 es un directorio y su contenido es:"
                echo "$(ls ./$1)"
            fi
        fi
    else # Si es un fichero
        echo "Todo correcto, el parametro es un fichero."
    fi
fi
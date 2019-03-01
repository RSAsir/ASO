#!/bin/bash

clear

ficheros=$(ls | wc -l) # IMPORTANTE wc sirve para contar cosas

if [ $ficheros -gt 10 ]; then
    echo "Hay mas de 10 ficheros."
else
    echo "Hay menos de 10 ficheros."
fi
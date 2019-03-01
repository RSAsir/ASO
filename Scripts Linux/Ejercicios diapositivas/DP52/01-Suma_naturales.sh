#!/bin/bash
clear

# METODO 1

# let contador=0
# for ((i=1 ; $i<101; i=$i+1)); do
#     let "contador=$contador+$i"
# done

echo $contador

# METODO 2

i=0 # i tiene que estar inicializado

while [ $i -le 100 ]; do
    contador=$(($contador+$i))
    i=$(($i+1))
done

echo $contador
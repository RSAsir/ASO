#!/bin/bash
clear

es_numero='^⁻?[0-9]+([.][0-9]+)?$'

if [ ! -e agenda ]; then
    touch agenda
fi;

echo "** TITULO AGENDA **"
echo ""
echo "OPERACIONES DISPONIBLES"
echo "1. Añadir contacto."
echo "2. Borrar contacto."
echo "3. Modificar datos contacto."
echo "4. Ver datos"
echo "5. Salir"
echo ""
echo ""
read -p "Determine la operacion a realizar: " operacion

while [ ! $operacion -eq 1 ] && [ ! $operacion -eq 2 ] && [ ! $operacion -eq 3 ] && [ ! $operacion -eq 4 ] && [ ! $operacion -eq 5 ]; do
    echo "Operacion no reconocida."
    echo ""
    echo ""
    echo "OPERACIONES DISPONIBLES"
    echo "1. Añadir contacto."
    echo "2. Borrar contacto."
    echo "3. Modificar datos contacto."
    echo "4. Ver datos"
    echo "5. Salir"
    echo ""
    echo ""
    read -p "Determine la operacion a realizar: " operacion
    clear
    while ! [[ $operacion =~ $es_numero ]] ; do # Control para numeros
        echo "Error. No ha introducido un numero"
        echo "Operacion no reconocida."
        echo ""
        echo ""
        echo "OPERACIONES DISPONIBLES"
        echo "1. Añadir contacto."
        echo "2. Borrar contacto."
        echo "3. Modificar datos contacto."
        echo "4. Ver datos"
        echo "5. Salir"
        echo ""
        echo ""
        read -p "Determine la operacion a realizar: " operacion
        clear
    done
done

case $operacion in
    1)
        read -p "Inserte el NIF: " nif
            cadena="TRWAGMYFPDXBNJZSQVHLCKET" #orden de letras que corresponden a cada dni
            longitud=${#nif} #Calcula la longitud del primer parámetro

            while [ ! $longitud -eq 9 ]; do
                echo "Longitud de nif errónea, debe tener 8 dígitos y 1 letra"
                read -p "Inserte el NIF: " nif
                longitud=${#nif}
                clear
            done

            pos=`expr ${1:0:8} % 23` #pos indica la posicion en cadena para saber la letra
            letra=${cadena:pos:1} #letra es la letra que corresponde según pos
            letraentrada=`echo ${1:8}|tr [a-z] [A-Z]` #Pasa de minúsculas a mayúsculas para la comparación correcta
                
            while [ "$letra" = "$letraentrada" ]; do
                echo "Letra inválida, no se corresponde con su dni"
                read -p "Inserte el NIF: " nif
                clear
                while [ ! $longitud -eq 9 ];do
                    echo "Longitud de nif errónea, debe tener 8 dígitos y 1 letra"
                    read -p "Inserte el NIF: " nif
                    longitud=${#nif}
                    clear
                done
            done
            echo $nif
            
   
    
        read -p "Inserte el Nombre: " nombre
        # val nombre
        read -p "Inserte el apellido: " apellido
        # val apellido
        read -p "Inserte la direccion: " direccion
        # val direccion
        read -p "Inserte el codigo postal: " codigo
        # val codigo
        read -p "Inserte el telefono: " telefono
        # val telefono

        echo $nif:$nombre:$apellido:$direccion:$codigo:$telefono>>agenda
        ;;
    2)
        echo "Introduce ID de la entrada a borrar: "
            read i2
            while read linea
            do
                campo="echo $linea | cut -f 5 -d :"
                if [ $campo == $i2 ]
                then
                    echo "Entrada borrada"
                else
                    echo $linea >> agenda2.txt
                fi
            done <agenda.txt
            rm -rf agenda.txt > /dev/null
            mv agenda2.txt agenda.txt > /dev/null
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
        exit
        ;;
esac
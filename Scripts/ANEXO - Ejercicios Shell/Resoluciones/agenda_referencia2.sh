#!/bin/bash

function alta(){
clear
if [ -e agenda.txt ];then
echo;echo "----- Introduzca los datos del contacto -----";echo
read -p "NIF: " nf;echo;read -p "Nombre: " nom;echo;read -p "Apellido: " ape;echo
read -p "Dirección: " dir;echo;read -p "Código Postal: " cpost;echo;read -p "Teléfono: " tlf;echo
NIF=`echo "${nf^^}"`
bus=$(cat agenda.txt|cut -d ":" -f1|grep -w "$NIF")
  if [ -z "$NIF" -o -z "$nom" ];then
  echo;echo "-- Debe ingresar al menos el NIF y el nombre";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";echo
  else
    if [ "$NIF" = "$bus" ];then
    echo;echo "-- Ya existe un contacto con el NIF $NIF";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL "
    else
    echo "$NIF:$nom:$ape:$dir:$cpost:$tlf">>agenda.txt
    clear;echo;echo "----- El contacto $nom $ape se ha registrado -----";echo
    echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
    echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL "
    fi
  fi
else
echo;echo "-- No se puede acceder a AGENDA 2.0";echo;read -p "-- Pulse ENTER para salir de AGENDA 2.0 ";echo;break
fi
}

function baja(){
clear
if [ -e agenda.txt ];then
echo;read -p "-- Introduzca el NIF del contacto a borrar: " nf;echo
NIF=`echo "${nf^^}"`
bus=$(cat agenda.txt|cut -d ":" -f1|grep -w "$NIF")
  if [ -z "$NIF" ];then
  echo "-- Tiene que ingresar un NIF";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";echo
  else
    if [ "$NIF" = "$bus" ];then
    cat agenda.txt|grep -wv "^$NIF">temp;mv temp agenda.txt
    clear;echo;echo "----- El contacto con NIF $NIF se ha eliminado -----";echo
    echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
    echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL "
    else
    echo "-- El NIF $NIF no existe en AGENDA 2.0";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL "
    fi
  fi
else
echo;echo "-- No se puede acceder a AGENDA 2.0";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";echo;break
fi
}

function modificar(){
clear
if [ -e agenda.txt ];then
echo;read -p "-- Introduzca el NIF del contacto a modificar: " nf;echo
NIF=`echo "${nf,,}"`
bus=$(cat agenda.txt|cut -d ":" -f1|grep -w "$NIF")
  if [ -z "$NIF" ];then
  echo "-- Tiene que ingresar un NIF";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";echo
  else
    if [ "$NIF" = "$bus" ];then
    cat agenda.txt|grep -wv "^$NIF">temp;mv temp agenda.txt;alta
    else
    echo "-- El NIF $NIF no existe en AGENDA 2.0";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL "
    fi
  fi
else
echo;echo "-- No se puede acceder a AGENDA 2.0";echo;read -p "-- Pulse ENTER para salir de AGENDA 2.0 ";echo;break
fi
}

function ordenar(){
if [ -e agenda.txt ];then
  while [ 1 ];do
  clear
  echo;echo "-- Puede ordenar AGENDA 2.0 por los siguientes campos: ";echo
  echo " 1. NIF";echo " 2. Nombre";echo " 3. Apellido"
  echo " 4. Dirección";echo " 5. Código Postal";echo " 6. Teléfono";echo " 7. Volver al MENÚ PRINCIPAL"
  echo;read -n1 -p "-- Introduzca el campo a ordenar: " cm;echo;clear
    case $cm in
      1) sort -t: -bk1 agenda.txt>temp;mv temp agenda.txt;cp agenda.txt agenda2.txt
      echo;echo "----- AGENDA 2.0 se ha ordenado por el campo introducido -----";echo
      echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
      echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";break;;
      2) sort -t: -bk2 agenda.txt>temp;mv temp agenda.txt;cp agenda.txt agenda2.txt
      echo;echo "----- AGENDA 2.0 se ha ordenado por el campo introducido -----";echo
      echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
      echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";break;;
      3) sort -t: -bk3 agenda.txt>temp;mv temp agenda.txt;cp agenda.txt agenda2.txt
      echo;echo "----- AGENDA 2.0 se ha ordenado por el campo introducido -----";echo
      echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
      echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";break;;
      4) sort -t: -bk4 agenda.txt>temp;mv temp agenda.txt;cp agenda.txt agenda2.txt
      echo;echo "----- AGENDA 2.0 se ha ordenado por el campo introducido -----";echo
      echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
      echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";break;;
      5) sort -t: -bk5 agenda.txt>temp;mv temp agenda.txt;cp agenda.txt agenda2.txt
      echo;echo "----- AGENDA 2.0 se ha ordenado por el campo introducido -----";echo
      echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
      echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";break;;
      6) sort -t: -bk6 agenda.txt>temp;mv temp agenda.txt;cp agenda.txt agenda2.txt
      echo;echo "----- AGENDA 2.0 se ha ordenado por el campo introducido -----";echo
      echo "<-- AGENDA 2.0 queda así -->";echo;cat agenda.txt|more
      echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";break;;
      7) clear;echo;echo "----- Saliendo al MENU PRINCIPAL -----";sleep 1;echo;break;;
      *) echo;echo "-- La opción elegida no es válida";echo;read -p "-- Pulse ENTER para intentarlo de nuevo ";;
    esac
  done
else
echo;echo "-- No se puede acceder a AGENDA 2.0";echo;read -p "-- Pulse ENTER para salir de AGENDA 2.0. ";echo;break
fi
}

function mostrar(){
clear
if [ -e agenda.txt ];then
echo;echo "<-- Este es el contenido de AGENDA 2.0 -->";echo
cat agenda.txt|more;echo
read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL "
else
echo;echo "-- No se puede acceder a AGENDA 2.0";echo;read -p "-- Pulse ENTER para salir de AGENDA 2.0 ";echo;break
fi
}

op=0
salir=6
while [ 1 ];do
clear
echo;echo "******* AGENDA 2.0 *******"
echo;echo "***** MENÚ PRINCIPAL *****";echo
echo " 1. Añadir Contacto"
echo " 2. Borrar Contacto"
echo " 3. Modificar Contacto"
echo " 4. Ordenar por Campo"
echo " 5. Mostrar Agenda"
echo " 6. Salir de Agenda";echo
read -n1 -p "-- Elija una opción " op;echo
  case "$op" in
    1) alta;;
    2) baja;;
    3) modificar;;
    4) ordenar;;
    5) mostrar;;
    6) clear;echo;echo "----- Gracias por utilizar AGENDA 2.0, hasta luego! -----";sleep 1
       echo;echo "*------------------ david pérez parra ------------------*";echo;break;;
    *) clear;echo;echo "-- La opción elegida no es válida";echo;read -p "-- Pulse ENTER para volver al MENÚ PRINCIPAL ";;
  esac
done

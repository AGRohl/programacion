#!/bin/bash

#  Un script de respaldo produce, entre otros mensajes, líneas del tipo
# "Total bytes written 18804023"
# Guarda su salida en el archivo respaldo.error. Escribir un script total.cinta que sume
# los bytes grabados e indique el total en bytes, Mb y Gb.
# Crear un archivo respaldo.error de prueba, con un contenido tal como
# Total bytes written 1800
# Total bytes written 1000




# Variables

#
# total.cinta: cantidad de bytes grabados en cinta
#
suma=0
respaldo=`cat respaldo.error | tr -dc "[0-9] "`

for NUM in $respaldo
do
  suma=`expr $suma + $NUM`
done

echo "Total General de bytes respaldados: "$suma
megas=`expr $suma \/ 1000000`
echo "Total General de MB respaldados: "$megas
gigas=`expr $megas \/ 1000`
echo "Total General de GB respaldados: "$gigas

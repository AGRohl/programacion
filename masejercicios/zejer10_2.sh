#!/bin/bash

#  Escribir los siguientes programas:
# a) ligass: muestra los nombres de archivo que son enlaces simbólicos.
# b) ligash: muestra los archivos que tiene enlaces hard.
# Ambos programas reciben un nombre como parámetro, y validarán que corresponda a un 1
# del sistema.





# Variables

argumento=`zenity --forms --title="Nombre directorio" \
    --text="Introduce nombre de directorio" \
    --add-entry="Nombre directorio" 2> /dev/null`

# 3- Comprobamos que existe el grupo.

if [ ! -d "$argumento" ]
  then
    zenity --info --text="No existe este directorio"
    exit 2
fi

# 4- Sacamos los enlaces
zenity --info --title="Enlaces Hard:" --text="$(ls -l $1 | tail -n +2 | grep -v "^d" | cut -f2-11 -d" " |grep -v "^1 ")"

  


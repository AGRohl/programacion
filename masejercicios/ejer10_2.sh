#!/bin/bash

#  Escribir los siguientes programas:
# a) ligass: muestra los nombres de archivo que son enlaces simbólicos.
# b) ligash: muestra los archivos que tiene enlaces hard.
# Ambos programas reciben un nombre como parámetro, y validarán que corresponda a un 1
# del sistema.





# Variables

# 1- Limpiar pantalla
clear

# 2- Control de argumentos.
if [ $# -ne 1 ]
  then 
		echo "Número de parámetros incorrecto /n"
		exit 1
fi

# 3- Comprobamos que existe el grupo.

if [ ! -d "$1" ]
  then
    echo "No existe este enlace"
    exit 2
fi

# 4- Sacamos los enlaces
echo Enlaces Hard:
ls -l $1 | tail -n +2 | grep -v "^d" | cut -f2-11 -d" " |grep -v "^1 "  


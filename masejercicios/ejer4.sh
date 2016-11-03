#!/bin/bash

# Escribir un programa seaejec que reciba un nombre de archivo, verifique que existe y que es
# un archivo común, lo convierta en ejecutable para el dueño y el grupo y muestre el modo final.


# Variables


# 1- Saber si hemos recibido un parámetro.

if [ $# -eq 0 ] || [ $# -gt 1 ]
   then
     echo "Falta nombre o nombres de archivo"
     exit 1
fi

# 2- Saber que es un fichero existente

if [ -f $1 ]
	then
            chmod ug+x $1
            ls -l $1
	else
		echo "No es un fichero válido"
		exit 2
fi

exit 0



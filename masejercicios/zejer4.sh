#!/bin/bash

# Escribir un programa seaejec que reciba un nombre de archivo, verifique que existe y que es
# un archivo común, lo convierta en ejecutable para el dueño y el grupo y muestre el modo final.


# Variables
fichero=tempfile

# 1- Recibimos un parámetro.

argumento=`zenity --forms --title="zejer4" \
    --text="Introduce nombre de archivo" \
    --add-entry="Nombre archivo" 2> /dev/null`


# 2- Saber que es un fichero existente

if [ -f $argumento ]
	then
            chmod ug+x $argumento
            ls -l $argumento >> "$fichero"
            zenity --text-info --title="fichero" \
                   --filename="$fichero"
            rm -f $fichero
	else
            zenity --info \
		   --text="No es un fichero válido"
            exit 2
fi

exit 0



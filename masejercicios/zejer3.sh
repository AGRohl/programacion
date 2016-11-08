#!/bin/bash

# Recibir un nombre de directorio, validar existencia y condición de directorio y mostrar nombres
# de todos los directorios y subdirectorios bajo él, en formato de página largo 23.


# Variables
fichero=tempfile

# 1- Recibimos un parámetro.

argumento=`zenity --forms --title="zejer3" \
    --text="Introduce nombre de directorio" \
    --add-entry="Nombre directorio" 2> /dev/null`

# 2- Saber que es un directorio existente

if [ -d $argumento ]
	then
		ls -lR $argumento | grep ^d > $fichero #/tmp/ejer3.txt
  	pr -l 23 $fichero #/tmp/ejer3.txt
		zenity --text-info \
					 --title="Directorio"\
					 --filename="$fichero"
		rm -f $fichero #/tmp/ejer3.txt
	else
		zenity --info \
					 --text="No es un directorio válido"
					 
		exit 2
fi

exit 0



#!/bin/bash

# Recibir un nombre de directorio, validar existencia y condición de directorio y mostrar nombres
# de todos los directorios y subdirectorios bajo él, en formato de página largo 23.


# Variables
fichero=tempfile

# 1- Saber si hemos recibido un parámetro.

if [ $# -eq 0 ] || [ $# -gt 1 ]
   then
     echo "Falta nombre o nombres de archivo"
     exit 1
fi

# 2- Saber que es un directorio existente

if [ -d $1 ]
	then
		ls -lR $1 | grep ^d > $fichero #/tmp/ejer3.txt
  	pr -l 23 $fichero #/tmp/ejer3.txt
		rm -f $fichero #/tmp/ejer3.txt
	else
		echo "No es un directorio"
		exit 2
fi

exit 0



#!/bin/bash

# Recibir varios nombres de archivo como parámetros, y para cada uno 
# validar si el nombre corresponde a un archivo común existente, y si
# es así mostrarlo en pantalla paginando.


# Variables


# 1- Saber si hemos recibido un parámetro.


if [ $# -eq 0 ]
   then
     echo "Falta nombre o nombres de archivo"
     exit 1
fi


# 2- Bucle para buscar los archivos

for variable in $*
do
    find . -type f -name $variable 2>/dev/null
		if [ $variable ]
			then 
				echo "$variable existe"
			else
				echo "$variable no existe"
		fi
		read f
	
done
exit 0	

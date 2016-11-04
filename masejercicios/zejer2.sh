#!/bin/bash

# Recibir varios nombres de archivo como parámetros, y para cada uno 
# validar si el nombre corresponde a un archivo común existente, y si
# es así mostrarlo en pantalla paginando.
# Ahora con zenity.

# Variables


# 1- Recibimos un parámetro.

argumento=`zenity --forms --title="zejer2" \
    --text="Introduce nombres de archivo" \
    --add-entry="Nombres archivo" 2> /dev/null`

# 2- Bucle para buscar los archivos

for variable in $argumento
do
    find . -type f -name $variable 2>/dev/null
		if [ $variable ]
			then 
				echo "$variable existe" >> /tmp/archivos.txt
		fi
done

exit 0	

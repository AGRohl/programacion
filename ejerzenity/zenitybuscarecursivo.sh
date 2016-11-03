#!/bin/bash
# Alejandro Garcia.
# Mostrar de manera recursiva el contenido del directorio y subdirectorios

buscar(){
for i in *
do
	if [ -f $i ]
		then
			echo "$i es un fichero" >> /tmp/listado 2>/dev/null

	elif [ -d $i ]
		then
			echo "$i es un directorio y contiene:" >> /tmp/listado 2>/dev/null
			cd $i
			buscar
			cd ..
	fi
done
}

file=`zenity --file-selection --directory
             --title="Mostrar directorio y subdirectorios" \ 2>/dev/null`

buscar $file

zenity --text-info \
       --title="Resultado de búsqueda:" \
       --filename=/tmp/listado 2>/dev/null \
       2>/dev/null

rm /tmp/listado

exit 0




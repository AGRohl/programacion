#!/bin/bash
# Alejandro Garcia.
# Mostrar de manera recursiva el contenido del directorio y subdirectorios



buscar(){
for i in *
do
	if [ -f $i ]
		then
			echo "el fichero $i existe"
	elif [ -d $i ]
		then
			echo "$i es un directorio y contiene:"
			cd $i
			buscar
			cd ..
	fi
done
}

buscar
exit 0







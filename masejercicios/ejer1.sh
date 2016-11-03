#!/bin/bash

# Recibir un nombre de archivo como parámetro e indicar, imprimiendo
# todas las leyendas que correspondan, si el archivo es legible,
# modificable y ejecutable por el usuario.


# 1- Saber si hemos recibido un parámetro.

if [ $# -ne 1 ]
  then 
		echo "Número de parámetros incorrecto /n"
		exit 1
fi


# 2- Saber si es un fichero o un directorio

if [ -d $1 ]
	then
		echo "es un directorio"
	else
		echo "es un fichero"
fi

# 3- Saber características del archivo

if [ -r $1 ]
	then
		echo "leible,"
	else
		echo "no leible,"
fi
if [ -w $1 ]
	then
		echo "escribible,"
	else
		echo "no escribible,"
fi
if [ -x $1 ]
	then
		echo "ejecutable"
	else
		echo "no ejecutable"
fi

exit 0
	

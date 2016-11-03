#!/bin/bash

#  Escribir un programa usugrup que dado un nombre de login de usuario determine si existe en
# el sistema, y si es así, presente su nombre de usuario, , número de usuario (UID), grupo primario y
# grupos secundarios si los tiene, con leyendas adecuadas.



# Variables
control=$(id $1 2>/dev/null)
numero= $("$control" | tr " " "\n" | wc -l)

# 1- Limpiar pantalla
clear

# 2- Control de argumentos.
if [ $# -ne 1 ]
  then 
		echo "Número de parámetros incorrecto"
		exit 1
fi

# 3- Comprobamos que existe el usuario.
if [ ! "$control" ]
	then
		echo "Usuario inexistente"
	else
		echo -n "Número del Usuario $1: "
		echo "$control" |  cut -f1 -d" " | cut -f2 -d"=" | cut -f1 -d"("
		echo -n "Grupo: "
		echo "$control" |  cut -f2 -d" " | cut -f2 -d"=" | cut -f1 -d"("
		echo -n "Grupos: "
		echo "$control" |  cut -f3-$numero -d" " | cut -f2 -d"="
fi



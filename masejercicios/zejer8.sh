#!/bin/bash

#  Escribir un programa usugrup que dado un nombre de login de usuario determine si existe en
# el sistema, y si es así, presente su nombre de usuario, , número de usuario (UID), grupo primario y
# grupos secundarios si los tiene, con leyendas adecuadas.



# Variables
argumento=`zenity --forms --title="Nombre Usuario" \
    --text="Introduce nombre de Usuario" \
    --add-entry="Nombre Usuario" 2> /dev/null`
control=$(id $argumento 2>/dev/null)
numero=$("$control" | tr " " "\n" | wc -l)
# 3- Comprobamos que existe el usuario.
if [ ! "$control" ]
	then
		zenity --info \
		   --text="Usuario inexistente"
	else
		echo -n "Número del Usuario $1: " > /tmp/user.txt
		echo "$control" |  cut -f1 -d" " | cut -f2 -d"=" | cut -f1 -d"(" >> /tmp/user.txt
		echo -n "Grupo: " >> /tmp/user.txt
		echo "$control" |  cut -f2 -d" " | cut -f2 -d"=" | cut -f1 -d"(" >> /tmp/user.txt
		echo -n "Grupos: " >> /tmp/user.txt
		echo "$control" |  cut -f3-$numero -d" " | cut -f2 -d"=" >> /tmp/user.txt
		zenity --text-info --title="Datos usuario:" --filename=/tmp/user.txt
fi



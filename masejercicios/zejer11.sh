#!/bin/bash

#  Escribir un programa saludo que, según la hora, escriba el saludo correspondiente al nombre
# de pila del usuario. En el archivo /etc/passwd los usuarios deben estar ingresados con nombre y
# apellido separados por blanco. Los saludos corresponden a las siguientes horas: Buenos días, de
# 05:00 hasta 12:59; Buenas tardes, de 13:00 hasta 19:59; Buenas noches 20:00 hasta 04:59. Ejemplo
# de mensaje: Buenos días, Juan.
# A efectos de pruebas, se recibirán la hora y el nombre de login como parámetros, dejando
# comentados los comandos donde se extrae la hora real y se toma el usuario real.



# Variables
argumento=`zenity --forms --title="Nombre Usuario" \
    --text="Introduce tu nombre" \
    --add-entry="Nombre" 2> /dev/null`

nombre=$(cat /etc/passwd | cut -d: -f1 | grep "^$argumento" )
# para que cogiera el nombre del usuario logueado sería:
#nombre=`cat /etc/passwd | grep "^$LOGNAME" | cut -d: -f5 | cut -d' ' -f1`
hora=`date | cut -f5 -d" " | cut -c1-2 | tr -d ' '`


# Control de usuario
if [ ! "$nombre" ]
	then
		zenity --info --text="No es un usuario válido"
		exit=2
fi

if [ "$hora" -lt 5 ]
	then
	  zenity --info --title="saludo" --text="Buenas noches $nombre" 
elif [ "$hora" -lt 13 ]
	then
	  zenity --info --title="saludo" --text="Buenos días $nombre" 
elif [ "$hora" -lt 20 ]
	then
	  zenity --info --title="saludo" --text="Buenas tardes $nombre" 
else
	  zenity --info --title="saludo" --text="Buenas noches $nombre" 
fi

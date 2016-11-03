#!/bin/bash

#Pide la edad del usuario.
#Si está comprendida entre 0 y 13 muestre el mensaje "niño",
#entre 14 y 18 muestre el mensaje "joven"
#y cualquier otro valor muestre el mensaje "mayor".

valor=`zenity --entry --text "Escribe tu edad y pulsa enter: " 2> /dev/null` 

case $valor in
	[0-9]|1[0-3] )
		`zenity --info --text "Es un niño" 2> /dev/null` ;;
	1[4-8])
		`zenity --info --text "Es un joven" 2> /dev/null` ;;
	*)
		`zenity --info --text "Es un mayor" 2> /dev/null` ;;
esac


#!/bin/bash
# Alejandro García

valor=`zenity --entry --text "Introduzca un número" 2>/dev/null`
factor=$valor
resultado=$valor

while [ $fac -gt 1 ]
do
	fac=$(($fac -1))
	res=$(($res + $fac))
done

zenity --info text "el factorial de $valor es $resultado" 2>/dev/null

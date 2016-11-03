#!/bin/bash
# Alejandro García

VALORES=`zenity --forms --title="Números entre 0 y 100" \
    --text="Introduce dos números" \
    --separator="," \
    --add-entry="Primer número" \
    --add-entry="Segundo número" 2> /dev/null`
V1=`echo "$VALORES" | cut -f1 -d ","`
V2=`echo "$VALORES" | cut -f2 -d ","`

if [ `echo $V1 $V2 | wc -w` -ne 2 ]
then
	zenity --info --text="Debes introducir 2 valores" 2> /dev/null
else
	zenity --info --text="El número de argumentos es 2" 2> /dev/null
	if [ $V1 -ge 0 ] && [ $V1 -le 100 ]
	then
		zenity --info --text="El primer número está en el rango" 2> /dev/null
	else
		zenity --info --text="El primer número está fuera de rango" 2> /dev/null
	fi
	if [ $V2 -ge 0 ] && [ $V2 -le 100 ]
	then
		zenity --info --text="El segundo número está en el rango" 2> /dev/null
	else
		zenity --info --text="El segundo número está fuera de rango" 2> /dev/null
	fi

fi




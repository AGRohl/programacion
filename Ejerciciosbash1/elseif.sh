#!/bin/bash

if [ $# -ne 2 ]
	then 
echo "Cantidad de argumentos no válida. Fin de programa"
		exit 1

	elif [ $1 -le 0 ] || [ $1 -gt 100 ]
		then
			echo -n "Primer argumento fuera de rango "
			
	elif [ $2 -le 0 ] || [ $2 -gt 100 ]
		then
			echo -n "Primer argumento en el rango "
			echo "pero segundo argumento fuera de rango"
	else
		echo -n "Primer argumento en el rango "
		echo "y segundo argumento en el rango"
fi


exit 0

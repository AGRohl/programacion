#!/bin/bash
# Alejandro García
if [ $# -eq 2 ]
	then 
		echo "Cantidad de argumentos válida"
	else
		echo "Cantidad de argumentos no válida. Fin de programa"
		exit 1
fi

if [ $1 -ge 0 ] && [ $1 -le 100 ]
	then
		echo -n "Primer argumento en el rango "
	else
		echo -n "Primer argumento fuera de rango "
fi

if [ $2 -ge 0 ] && [ $2 -le 100 ]
	then
		echo "y segundo argumento en el rango"
	else 
		echo "y segundo argumento fuera de rango"
fi

exit 0


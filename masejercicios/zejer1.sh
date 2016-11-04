#!/bin/bash

# Recibir un nombre de archivo como parámetro e indicar, imprimiendo
# todas las leyendas que correspondan, si el archivo es legible,
# modificable y ejecutable por el usuario.
# En esta ocasión usamos zenity.



# 1- Recoger nombre de archivo

argumento=`zenity --forms --title="zejer1" \
    --text="Introduce un nombre de archivo" \
    --add-entry="Nombre archivo" 2> /dev/null`


# 2- Saber si es un fichero o un directorio

if [ -d $argumento ]
	then
		zenity --info --text="es un directorio" 2> /dev/null 
	elif [ -f $argumento ]
		then
      zenity --info --text="es un fichero" 2> /dev/null 
	else
			zenity --info --text="ni directorio ni fichero" 2> /dev/null 
fi

# 3- Saber características del archivo

if [ -r $argumento ]
	then
		zenity --info --text="es leible, " 2> /dev/null 
	else
		zenity --info --text="no es leible, " 2> /dev/null 
fi
if [ -w $1 ]
	then
		zenity --info --text="es escribible, " 2> /dev/null 
	else
		zenity --info --text="no es escribible, " 2> /dev/null 
fi
if [ -x $1 ]
	then
		zenity --info --text="es ejecutable. " 2> /dev/null 
	else
		zenity --info --text="no es ejecutable." 2> /dev/null 
fi

exit 0
	

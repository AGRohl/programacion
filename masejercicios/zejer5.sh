#!/bin/bash

# Escribir un programa copiabin.sh que mueva todos los programas del directorio actual
# (archivos ejecutables) hacia el subdirectorio bin del directorio propio del usuario, muestre los
# nombres de los que mueve e indique cuántos ha movido o que no ha movido ninguno. Si el
# directorio bin no existe, deberá ser creado.

# Variables
dir="$HOME/bin"
suma=0

# 1- Saber que bin existe

if [ ! -d $dir ]
   then
     zenity --info --text="Creando la carpeta bin en su directorio personal" 
     mkdir $dir
fi

for i in * 
do
    if [ -f $i ] && [ -x $i ]
      then
        cp $i $dir/.
        suma=`expr $suma + 1`
    fi        
done

if [ $suma -eq 0 ]
   then
     zenity --info --text="No había ningún archivo ejecutable."
   else
     zenity --info --text="Se han movido $suma archivos a $dir"
fi

exit 0



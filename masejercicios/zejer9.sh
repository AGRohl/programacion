#!/bin/bash

# Escribir un programa grupusu que dado un nombre de grupo determine si existe en el sistema,
# y si es así, presente su nombre, número de grupo (GID), y lista de usuarios que pertenezcan a él, ya
# sea como grupo primario (en /etc/passwd) o como grupo secundario (lista en /etc/group).




# Variables
argumento=`zenity --forms --title="Nombre Grupo" \
    --text="Introduce nombre de Grupo" \
    --add-entry="Nombre Grupo" 2> /dev/null`

grupo=$(cat /etc/group | cut -f1 -d: | grep "^$argumento$")


# 3- Comprobamos que existe el grupo.

if [ ! $grupo ]
  then
    zenity --info \
           --text="No existe este grupo"
    exit 2
fi

# 4- Sacamos los datos del grupo.
numero=$(cat /etc/group | cut -f1,3 -d: | grep "^$grupo" | cut -f2 -d:) 
propietario=$(cat /etc/passwd | cut -d: -f1,4 | grep "^$grupo" | cut -d: -f1)
usuarios=$(cat /etc/group | cut -d: -f1,4 | grep "^$grupo:" | cut -d: -f2 )
# 5- Mostramos la información.
zenity --info --text="$(echo "El grupo $argumento tiene el GID $numero, $propietario es su amo y estos son sus usuarios: $usuarios")"
#echo "El grupo $1 tiene el GID $numero, $propietario es su amo y estos son sus usuarios: $usuarios"
exit 0



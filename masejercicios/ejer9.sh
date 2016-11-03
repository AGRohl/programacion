#!/bin/bash

# Escribir un programa grupusu que dado un nombre de grupo determine si existe en el sistema,
# y si es así, presente su nombre, número de grupo (GID), y lista de usuarios que pertenezcan a él, ya
# sea como grupo primario (en /etc/passwd) o como grupo secundario (lista en /etc/group).




# Variables
grupo=$(cat /etc/group | cut -f1 -d: | grep "^$1$")

# 1- Limpiar pantalla
clear

# 2- Control de argumentos.
if [ $# -ne 1 ]
  then 
		echo "Número de parámetros incorrecto /n"
		exit 1
fi

# 3- Comprobamos que existe el grupo.

if [ ! $grupo ]
  then
    echo "No existe este grupo"
    exit 2
fi

# 4- Sacamos los datos del grupo.
numero=$(cat /etc/group | cut -f1,3 -d: | grep "^$grupo" | cut -f2 -d:)
propietario=$(cat /etc/passwd | cut -d: -f1,4 | grep "^$grupo" | cut -d: -f1)
usuarios=$(cat /etc/group | cut -d: -f1,4 | grep "^$grupo:" | cut -d: -f2 )
# 5- Mostramos la información.
echo "El grupo $1 tiene el GID $numero, $propietario es su amo y estos son sus usuarios: $usuarios"
exit 0



#!/bin/bash

# Usando solamente el archivo /etc/group, escribir los siguientes programas:
# a) 'grupo1': listar los nombres y números de grupo y la lista de usuarios de cada uno, ordenados por
# nombre. Con leyendas explicativas adecuadas para cada columna. Estableciendo una pausa al
# terminar. Limpiando la pantalla al iniciar.
# b) 'grupo2': igual, ordenados por número de grupo. Con leyendas explicativas adecuadas para cada
# columna. Estableciendo una pausa al terminar.
# c) 'grupo3': reúne las dos salidas anteriores, así como nombre de la máquina y fecha del día.


# Variables

# 2- 
echo "Nombre GUID Usuarios"  > /tmp/grupo1.txt
echo "------ ---- ----------------"  >> /tmp/grupo1.txt
sort /etc/group | cut -f 1,3,4 -d":" | sed s/":"/" "/g | column -t >> /tmp/grupo1.txt
zenity --text-info --title="Usuarios de sistema y sus grupos" --filename=/tmp/grupo1.txt 

rm /tmp/grupo1.txt

# 3- 

exit 0



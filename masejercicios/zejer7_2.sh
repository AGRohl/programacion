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
echo "Nombre GUID Usuarios"  > /tmp/grupo2.txt
echo "------ ---- ----------------"  >> /tmp/grupo2.txt
cat /etc/group | cut -f 1,3,4 -d":" | sed s/":"/" "/g |sort -n -k 2 | column -t >> /tmp/grupo2.txt
zenity --text-info --title="Usuarios de sistema y sus grupos 2" --filename=/tmp/grupo2.txt 
rm /tmp/grupo2.txt

# 3- 

exit 0



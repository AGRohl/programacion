#!/bin/bash

# Usando solamente el archivo /etc/group, escribir los siguientes programas:
# a) 'grupo1': listar los nombres y números de grupo y la lista de usuarios de cada uno, ordenados por
# nombre. Con leyendas explicativas adecuadas para cada columna. Estableciendo una pausa al
# terminar. Limpiando la pantalla al iniciar.
# b) 'grupo2': igual, ordenados por número de grupo. Con leyendas explicativas adecuadas para cada
# columna. Estableciendo una pausa al terminar.
# c) 'grupo3': reúne las dos salidas anteriores, así como nombre de la máquina y fecha del día.


# Variables
fich='/tmp/grupo3.txt'
equipo=`hostname`
fecha=`date`

# 2- Reiniciamos $fich
echo "" > $fich
# 3- 
echo "Equipo: $equipo" > $fich
echo "fecha: $fecha" >> $fich
echo " "  >> $fich
echo "Mostrando grupo1" >> $fich
bash ./ejer7_1.sh  >> $fich
#cat /tmp/grupo1.txt >> $fich
echo " "  >> $fich
bash ./ejer7_2.sh  >> $fich
#cat /tmp/grupo2.txt >> $fich
zenity --text-info --title="Usuarios de sistema y sus grupos 3" --filename=$fich

exit 0



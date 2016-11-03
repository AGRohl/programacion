#!/bin/bash

# Usando el archivo /etc/passwd escribir el programa usuarios que lista los nombres de login, el
# directorio propio del usuario y el intérprete invocado por defecto de todos los usuarios, ordenados
# alfabéticamente por nombre de login. Con leyendas explicativas adecuadas para cada columna.
# Los campos son 1, 6 y 7.

# Variables


# 1- Leemos /etc/passwd
echo "Usuario Directorio Interprete"  > /tmp/usuarios.txt
echo "------- ---------- ----------"  >> /tmp/usuarios.txt
sort /etc/passwd | cut -f 1,6,7 -d":" | sed s/":"/" "/g >> /tmp/usuarios.txt
column -t /tmp/usuarios.txt | more
rm /tmp/usuarios.txt
exit 0



#!/bin/bash

# Crea un script para Comprimir/Descomprimir ficheros. en formato "tgz" mediante el comando "tar" Mostrará un menú con las opciones:
#
# - Comprimir
#
# - Descomprimir
#
# - Salir
#
# Dentro de cada una de las opciones, deberá pedir al usuario los ficheros a comprimir/descomprimir y el destino dónde comprimir/descomprimir.

#Variables
salir="false"
ficheros=""
ruta="."
nombre=""
opcion="K"

#funciones

function Preparaficheros(){
    ficheros=$(echo "$ficheros" | sed "s/ /\_/g")
    echo "$ficheros"
    read s
    ficheros=$(echo "$ficheros" | sed "s/,/ /g")
    echo "$ficheros"
    read s
#     return $ficheros
}

# function Buscaruta(){
#    encontrado=$(find / -type d -name "$ruta" 2>/dev/null)
#    while [ ! "$encontrado" ] 
#    do
#      echo "$ruta no es un directorio válido"
#      echo "Inserte de nuevo nombre de directorio o la letra S para salir"
#      read ruta
#      if [ "$ruta" -eq "s" ] or [ "$ruta" -eq "S" ]
#      then
#         echo "Salida solicitada por usuario. Adios"
#         exit 0
#     fi
#   done
#   return $ruta
# }

function Comprime(){
    Preparaficheros
#     Buscaruta
    echo "$ruta/$nombre" "$ficheros"
    read s
    destino="$ruta/$nombre"
    tar czvf "$destino" "$ficheros"
    ls "$destino"

}
function Descomprime(){
#     Preparaficheros
#     Buscaruta
    tar xvfz "$ruta/$ficheros.tar.tgz"

}



# Principal

clear
echo 'Programa para comprimir/descomprimir en formato tgz'
echo 'Selecciona una opción: '
echo 'C = comprimir '
echo 'D = descomprimir'
echo 'S = salir '


while [ "$salir" = "false" ]
do
    clear
    echo 'Programa para comprimir/descomprimir en formato tgz'
    echo 'Selecciona una opción: '
    echo 'C = comprimir '
    echo 'D = descomprimir'
    echo 'S = salir '
    read opcion
    
    case "$opcion" in
    
        C | c )
            echo 'Introduce los nombres de ficheros, separados por comas:'
            read ficheros
            echo 'Introduce la ruta:'
            read ruta
            if [ "$ruta" = "" ]
            then 
                ruta="."
            fi
            echo 'Introduce un nombre de archivo:'
            read nombre
            nombre="$nombre.tar.tgz"
            Comprime
            ;;
        D | d )
            echo 'Introduce los nombres de ficheros, separados por comas:'
            read ficheros
            echo 'Introduce la ruta:'
            read ruta
            Descomprime
            ;;
        S | s )
            salir="true"
            echo "Que pase un buen día.  Saliendo."
            ;;
        * )
            echo "opción incorrecta, ejecuta de nuevo el proceso."
            ;;
    esac
    
done


exit 0

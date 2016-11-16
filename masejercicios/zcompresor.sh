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
    ficheros=$(echo "$ficheros" | sed "s/,/ /g")
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
    destino="$ruta/$nombre"
    for i in $ficheros
    do
        tar rvf "$destino" "$i"
    done
    tar czvf "$destino.tgz" "$destino"
    rm "$destino"
}
function Descomprime(){

    tar xvfz "$ruta/$ficheros.tar.tgz"

}



# Principal

# clear
# echo 'Programa para comprimir/descomprimir en formato tgz'
# echo 'Selecciona una opción: '
# echo 'C = comprimir '
# echo 'D = descomprimir'
# echo 'S = salir '


while [ "$salir" = "false" ]
do
#     clear
#     echo 'Programa para comprimir/descomprimir en formato tgz'
#     echo 'Selecciona una opción: '
#     echo 'C = comprimir '
#     echo 'D = descomprimir'
#     echo 'S = salir '
#     read opcion
    opcion=`zenity --list --title="Programa compresor/descompresor" \
                   --column="Selecciona" --column="orden" \
                   true "comprimir" \
                   false "descomprimir" \
                   false "salir" \
                   --radiolist`
#     zenity --info --text="$opcion"

    case "$opcion" in
    
       comprimir )
            ficheros=`zenity --file-selection --multiple \
            --separator="," --title="Selecciona ficheros para comprimir"`
#             if [ "$ruta" = "" ]
#             then 
#                 ruta="."
#             fi
            
            nombre=`zenity --entry --text="introduce un nombre para el fichero comprimido"`
            nombre="$nombre.tar"
            zenity --info --text="$ficheros $nombre"
            Comprime
            ;;
      descomprimir )
            zenity --info --text="Proceso para descomprimir"
            ficheros=`zenity --file-selection --title="Selecciona un fichero para descomprimir"`
            Descomprime
            ;;
       salir )
            salir="true"
            zenity --info --text="Saliendo. Que pase un buen día."
            ;;

    esac
    
done


exit 0

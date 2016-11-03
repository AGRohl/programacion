#!/bin/bash
menu(){
	clear
	echo "1 Suma 2 Resta 3 Multiplica 4 Divide 5 Salir"
	echo "Introduzca una opcion: "
	read opcion 
	case $opcion in
		1)echo "Opción 1: Sumar";;
		2)echo "Opción 2: Restar";;
		3)echo "Opción 3: Multiplicar";;
		4)echo "Opción 4: Dividir";;
		5)echo "Fin de programa";;
		*)echo "Opción no válida";;
	esac
}


operacion(){
	echo "introduce 2 valores"
	read -p "primer valor " uno
	read -p "segundo valor " dos
	case $opcion in
		1)echo "suma" ; resultado=`expr $uno + $dos`;;
		2)echo "resta" ; resultado=`expr $uno - $dos`;;
		3)echo "multiplica" ; resultado=`expr $uno \* $dos`;;
		4)echo "Divide" ; resultado=`expr $uno / $dos`;;
	esac

}

while true
do
	menu
	if [ $opcion -lt 5 ]
	then
		operacion
		echo "Resultado es $resultado"
		read -p "pulsa una tecla para continuar"
	elif [ $opcion -eq 5 ]
	then
		exit
	fi
done


# modificar opcion y refinar calculos

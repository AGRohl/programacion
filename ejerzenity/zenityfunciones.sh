#!/bin/bash
# Alejandro Garcia.

menu(){
	opcion=`zenity --list --height="230"\
  --title="Calculadora" \
  --column="Número op." --column="Tipo op." \
	"1" "Suma" \
	"2" "Resta" \
	"3" "Multiplicación" \
	"4" "División" \
	"5" "Salida" 2> /dev/null`
	return $opcion	
}

operacion(){
	argumentos=`zenity --forms --title="Números" \
           --text="Introduce dos números" --separator="," \
           --add-entry="Primer Número" \
           --add-entry="Segundo Número" 2>/dev/null`

	V1=`echo "$argumentos" | cut -f1 -d ","`
  V2=`echo "$argumentos" | cut -f2 -d ","`

	case $1 in
		1)suma=`expr $V1 + $V2`;zenity --info --text="La suma es $suma" 2> /dev/null;;
		2)resta=`expr $V1 - $V2`;zenity --info --text="La resta es $resta" 2> /dev/null;;
		3)multi=`expr $V1 * $V2`;zenity --info --text="La multiplicación es $multi" 2> /dev/null;;
		4)divide=`expr $V1 / $V2`;zenity --info --text="La división es $divide" 2> /dev/null;;
		*)exit;;
	esac
}

while true
do
	menu
	if [ $opcion -lt 5 ] && [ $opcion -gt 0 ]
	then
		operacion $opcion
	else 
		exit
	fi
done


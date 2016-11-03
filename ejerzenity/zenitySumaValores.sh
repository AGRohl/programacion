valor=`zenity --entry --text "Introduce un valor a sumar" 2> /dev/null`  
while [ $valor -le 100 ]
do
		incremento=`zenity --entry --text "Introduce otro valor a sumar" 2> /dev/null` 
		valor=`expr $valor + $incremento`
done
zenity --info  --text "El valor de la suma de los números introducidos es: $valor" 2> /dev/null

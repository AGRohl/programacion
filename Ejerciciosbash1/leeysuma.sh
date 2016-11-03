#!/bin/bash

#Crear un script que pida números hasta que
#la suma supere el valor 100


echo "Vamos a sumar números: "
echo
SUMA=0
NUMERO=0

until [ $SUMA -gt 100 ] 

do
	echo "introduce un número"
	read NUMERO
	SUMA=`expr $SUMA + $NUMERO`
done

echo "el resultado final es $SUMA"
exit 0







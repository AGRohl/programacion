#!/bin/bash

#Pide la edad del usuario.
#Si está comprendida entre 0 y 13 muestre el mensaje "niño",
#entre 14 y 18 muestre el mensaje "joven"
#y cualquier otro valor muestre el mensaje "mayor".

echo -n "Escribe tu edad y pulsa enter: " 
read EDAD

case $EDAD in
	[0-9]|1[0-3] )
		echo "niño" ;;
	1[4-8])
		echo "joven" ;;
	*)
		echo "mayor" ;;
esac

exit 0

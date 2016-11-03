#!/bin/bash
#inicio del programa
saludo () {
echo "HOLA MUNDO (el valor del primer parámetro es: $1)"
}
contador=1
while test $contador -le 10
do
    saludo $contador
    contador=`expr $contador + 1`
done
#fin del programa

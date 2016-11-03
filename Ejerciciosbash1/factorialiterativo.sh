fac=$1
res=$fac
while [ $fac -gt 1 ]
do
	fac=$(($fac -1))
	res=$(($res + $fac))
done
echo "el factorial de $1 es $res"

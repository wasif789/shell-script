#!/bin/bash
read -p "enter the number: " n

for((i=2;i<=$n/2;i++))
do
	ans=$(($n%$i))
done
if [ $ans -eq 0 ]
then
	echo "not prime"
else
	echo "prime"
fi

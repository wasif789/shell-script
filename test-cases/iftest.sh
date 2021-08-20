#!/bin/bash -x
read -p "enter first number: " var1
read -p "enter second number: " var2
if [ $var2 -ge $var1 ]
then 
	echo "$var2 is greater than or equal to $var1"
else
	echo "$var2 is less than $var1"
fi

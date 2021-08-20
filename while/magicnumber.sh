#!/bin/bash
echo "guess any number between 1 to 100"
low=1
high=100
mid=0
mid=$((low+high/2))
notmagic=1
while (($notmagic==1))
do
	if ((low==mid))
	then
		notmagic=0
		echo "the magic number is $low"
	else
		read -p "is number less than $mid yes:" choice
	fi
	if [[ "$choice"=="yes"||"$choice"=="y"||"$choice"=="Y" ]]
	then
		high=$mid
	else
		low=$mid
	fi
	mid=$(((low+high)/2))
done

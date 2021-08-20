#!/bin/bash
coin=$((RANDOM%2))
if [ $coin -eq 0 ]
then
	echo "it is a head"
else
	echo "it is a tail"
fi

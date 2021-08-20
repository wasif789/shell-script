#!/bin/bash
read -p "first number is: " n1
read -p "second number is: " n2
read -p "third number is: " n3
read -p "fourth number is: " n4
read -p "fifth number is: " n5
sum=$(( n1+n2+n3+n4+n5 ))
echo " sum is $sum "
avg=$(( sum/5 ))
echo " average is $avg" 


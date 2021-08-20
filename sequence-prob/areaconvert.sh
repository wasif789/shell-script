#!/bin/bash
read -p "enter the length in feet: " l
read -p "enter the breadth in feet: " b
lin=$(( $l\*3.281 ))
bin=$(( $b\*3.281 ))
area=$(( $lin*$bin ))
echo "rectangular plot of $l feet* $b feet is eual to $lin metre*$bin metre and area is $area metre square"



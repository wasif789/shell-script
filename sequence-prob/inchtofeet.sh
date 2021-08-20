#!/bin/bash -x
read -p "enter length in inch to convert: " inc
convert=$((scale=2,$inc/12|bc)) 
echo $convert

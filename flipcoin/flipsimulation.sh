#!/bin/bash 
echo "------------------------------- Well come flip coin simulator ---------------------------"

#DECLARE A DICTIONARY
declare -A flipStore

#VARIABLES
isFlip=0
maximum=0
temp=0

#TO FUNCTION TO FIND HEAD AND TAIL COMBINATION
function totalFlip()
{
	for((index=0; index<$1; index++))
	do
		side=""
		for((indexOne=0; indexOne<$2; indexOne++))
		do
			#GENERATE RANDOM NUMBER
			flipCoin=$((RANDOM%2))
			if [ $flipCoin -eq $isFlip ]
			then
				side+=H
			else
				side+=T
			fi
		done
		flipStore[$side]=$((${flipStore[$side]}+1))
	done
	echo "Count of all combination     :${flipStore[@]}"
}


#FUNCTION TO FIND PERCENTAGE AND ALSO FIND MAXIMUM HEAD OR TAIL WINNING COMBINANTION
function totalPercentageFlip()
{
	for count in ${!flipStore[@]}
	{
		flipStore[$count]=`echo "scale=2; $((${flipStore[$count]}))/$times*100 " | bc`
		temp=${flipStore[$count]}
		if (( $(echo "$temp >= $maximum"| bc) ))
		then
			maximum=$temp
			key=$count
		fi
	}
}

#TO CHECKING HEADS OR TAILS
read -p "Enter number of times you want to flip:" times
read -p "Enter choice 1)Singlet 2)Doublet 3)Triplet and so on:" coins
totalFlip $times $coins
totalPercentageFlip
echo "All head and tail combination:${!flipStore[@]}"
echo "percentage of all combination:${flipStore[@]}"
echo "Max winning combination      :" $maximum "-" $key

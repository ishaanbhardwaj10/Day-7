#!/bin/bash

num1=$((RANDOM%900+100))
num2=$((RANDOM%900+100))
num3=$((RANDOM%900+100))
num4=$((RANDOM%900+100))
num5=$((RANDOM%900+100))
num6=$((RANDOM%900+100))
num7=$((RANDOM%900+100))
num8=$((RANDOM%900+100))
num9=$((RANDOM%900+100))
num10=$((RANDOM%900+100))

array=( $num1 $num2 $num3 $num4 $num5 $num6 $num7 $num8 $num9 $num10 )


max=${array[0]}
min=${array[0]}

for i in "${array[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
	fi

	if [ $i -lt $min ]
	then
		min=$i
	fi

done


secMax=${array[0]}
secMin=${array[0]}

for i in "${array[@]}"
do
	if [[ $i -gt $secMax && $i -lt $max ]]
	then
		secMax=$i
	fi

	if [[ $i -lt $secMin && $i -gt $min ]]
	then
		secMin=$i
	fi

done

echo ${array[@]}
echo "second largest number in the array is: " $secMax
echo "second smallest number in the array is: " $secMin

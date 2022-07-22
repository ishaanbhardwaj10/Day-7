#!/bin/bash -x

arr=()

for i in {0..100}
do
	num=$i
	revArr=()

	while [ $num -gt 0 ]
	do
		lastDigit=$(($num%10))
		num=$(($num/10))
		revArr+=($lastDigit)
	done

	if [ ${#revArr[@]} -eq 2 ]
	then
		if [ ${revArr[0]} -eq ${revArr[1]} ]
		then
			arr+=($i)
		fi
	fi
done

echo ${arr[@]}

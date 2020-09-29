#!/bin/sh
if [ $1 -lt 0 ]
then
	echo $1 is smaller than 0
else
	if [ $2 -lt 0 ]
	then
		echo $2 is smaller than 0
	else
		for i in $(seq 1 $1)
		do
			string=""
			for j in $(seq 1 $2)
			do
				temp=`expr $i \* $j`
				string=$string"$i*$j="$temp" "
			done
			echo $string
		done		
	fi
fi

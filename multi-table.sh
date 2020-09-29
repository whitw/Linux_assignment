#!/bin/sh
if [ $1 -le 0 ]
then
	echo $1 is smaller or equal to 0
else
	if [ $2 -le 0 ]
	then
		echo $2 is smaller or equal to 0
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

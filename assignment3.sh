#!/bin/sh
a=$1
b=$2

if [ -z $1 ] || [ -z $2 ]
then
	echo "Invalid input"
	exit 0
fi

if [ $a -le 0 ] || [ $b -le 0 ]
then
	echo "Input must be greater than 0"
	exit 0
fi

for i in $(seq 1 $a)
do
	for j in $(seq 1 $b)
	do
		echo -n "$i*$j = `expr $i \* $j` \t"
	done
	
	printf "\n"
done
exit 0

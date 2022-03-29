#!/bin/bash

echo "now i'm in `pwd`"

read num1 < num1.txt
read num2 < num2.txt

if [ $# -lt 1 ]; then
	PS3="select menu : "
	echo "...none operator parameter..."
	select i in add sub div mul
	do
		echo "you select %i ($REPLY)"
		set $i
		break
	done
fi

echo "num1 : $num1"
echo "num2 : $num2"
echo "op : $1"
echo -n "result : "
case $1 in
	add) let re="$num1+$num2";;
	sub) let re="$num1-$num2";;
	div) let re="$num1/$num2";;
	mul) let re="$num1*$num2";;
esac
echo $re

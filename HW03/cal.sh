#!/bin/bash

echo "now i'm in `pwd`"

read num1 < num1.txt
read num2 < num2.txt

data=($num1 $num2)

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

echo "nums_array : ${data[0]} ${data[1]}"
echo "op : $1"
echo -n "result : "
case $1 in
	add) let re="${data[0]}+${data[1]}";;
	sub) let re="${data[0]}-${data[1]}";;
	div) let re="${data[0]}/${data[1]}";;
	mul) let re="${data[0]}*${data[1]}";;
esac
echo $re

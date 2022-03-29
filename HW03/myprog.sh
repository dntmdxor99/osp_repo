#!/bin/bash

mkdir -p temp
echo ...create temp directory...
cp num*.txt cal.sh temp/
echo ...copy files to temp directory...

PS3="select menu : "

select i in add sub div mul
do
	echo "you select $i ($REPLY)"
	set "$i"
	echo "...add selected..."
	break
done

echo "...run calculater..."
cd temp/
chmod 755 cal.sh
./cal.sh $i

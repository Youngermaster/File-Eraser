#!/bin/bash
files=$(ls)

for file in ${files[@]}
do
	if [ -d $file ] || [ -s $file ]
	then
		echo "I can't erase $file."
	else
		echo "Erasing $file..."
		rm -f $file
	fi
done

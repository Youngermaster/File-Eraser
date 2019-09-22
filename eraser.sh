#!/bin/bash
fichers=$(ls)

for ficher in ${fichers[@]}
do
	if [ -d $ficher ] || [ -s $ficher ]
	then
		echo "I can't erase $ficher."
	else
		echo "Erasing $ficher..."
		rm -f $ficher
	fi
done

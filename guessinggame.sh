#!/usr/bin/env bash

echo "Please introduce the number of the files in the current directory:"

read guess

num_of_files=$(expr $(ls -l|wc -l) - 1)

echo $num_of_files

while [[ $guess -ne $num_of_files ]]	
do
	if [[ $guess -lt $num_of_files ]]
	then
		echo "You failed. Your number was too low. Please try again"
		read guess
	elif [[ $guess -gt $num_of_files ]]
	then
		echo "You failed. Your number was too high. Please try again"
		read guess
	fi
done

echo "Congratuations!! Well done!!"
	

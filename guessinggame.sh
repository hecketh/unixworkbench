#!/usr/bin/env bash
# File: guessinggame.sh

y=$(ls -l|wc -l)
function guess {
	while true; do
	echo "How many files are in the current directory?"
	read response
	if [[ $response -eq $1 ]]
	then
        	echo "Flawless Victory"
		break
	elif [[ $response -lt $1 ]]
	then
        	echo "Aww, too tiny"
        	echo "Try again"
        	
	elif [[ $response -gt $1 ]]
	then
        	echo "This number is too thicc and lorge"
        	echo "Try again"
        	
	fi
	done
}

guess y

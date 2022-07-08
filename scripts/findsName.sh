#!/bin/bash

function findNames {
	ROUTE_FILE=$1
	#VAlidar??

	NAME_REGEX="^[A-Z]"
	for word in $(cat "text.txt")
	do
		[[ $word  =~ $NAME_REGEX ]] && echo "Es nombre propio: $word"
	done
}

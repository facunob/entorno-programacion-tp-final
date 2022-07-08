#!/bin/bash

function findNames {
	ROUTE_FILE="/text/text.txt"

	NAME_REGEX="^[A-Z]"
	for word in $(cat $ROUTE_FILE)
	do
		[[ $word  =~ $NAME_REGEX ]] && echo "Es nombre propio: $word"
	done
}

#!/bin/bash

function findNames {
	ROUTE_FILE="/text/text.txt"

	NAME_REGEX="^[A-Z]"
	for WORD in $(cat $ROUTE_FILE); do
		[[ $WORD  =~ $NAME_REGEX ]] && echo "Es nombre propio: $WORD"
	done
}

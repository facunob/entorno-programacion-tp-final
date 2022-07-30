#!/bin/bash

function statsWords {
	ROUTE_FILE="/text/text.txt"

	NUMBER_OF_WORDS=0
	LENGTH_COUNTER=0
	LONGEST_WORD=""
	SHORTEST_WORD=""

	for x in $(cat $ROUTE_FILE); do
			LENGTH=${#x}
			NUMBER_OF_WORDS=$(($NUMBER_OF_WORDS+1))
			LENGTH_COUNTER=$(($LENGTH_COUNTER+$LENGTH))
			[[ $(($LENGTH)) -gt $((${#LONGEST_WORD})) ]] && LONGEST_WORD=$x
			[[ $(($LENGTH)) -lt $((${#SHORTEST_WORD})) ]] || [[ $((${#SHORTEST_WORD})) == 0 ]] && SHORTEST_WORD=$x
	done

	echo "Numero de palabras en el texto: $NUMBER_OF_WORDS"
	PROMEDIO=$(($LENGTH_COUNTER / $NUMBER_OF_WORDS))
	echo "Promedio de longitud de las palabras: $PROMEDIO"
	echo "La palabra mas larga es: $LONGEST_WORD"
	echo "La palabra mas corta es: $SHORTEST_WORD"
}

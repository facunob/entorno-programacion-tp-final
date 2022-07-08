#!/bin/bash

function statsUsageWords {
	ROUTE_FILE="./text.txt"
	declare -A WORDS #Declara un diccionario

	for WORD in $(cat $ROUTE_FILE)
		do
			WORD="${WORD//[.,!?]/''}" #Elimina de las palabras los caracteres propios de un texto.
			LENGTH=${#WORD}
			if [[ $LENGTH -ge 4 ]]
				then
					[[ WORDS[$WORD] -ge 0 ]] && WORDS[$WORD]=$((WORDS[$WORD]+1)) || WORDS[$WORD]=0
				fi
		done


	for (( I=0; I<=10; I++))
	do
		MOST_USAGE_WORD=""
		MOST_USAGE=0
		for WORD in "${!WORDS[@]}"
		do
			USAGE=${WORDS[$WORD]}
			#echo "$WORD: $USAGE"
			[[ $USAGE > $MOST_USAGE ]] && MOST_USAGE_WORD=$WORD && MOST_USAGE=$USAGE
		done

		[[ $MOST_USAGE -eq 0 ]] && exit 0

		echo "$I) $MOST_USAGE_WORD: $MOST_USAGE usos."
		WORDS[$MOST_USAGE_WORD]=0
	done
}




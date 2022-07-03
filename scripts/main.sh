#!/bin/bash
source /scripts/statsWords.sh

echo "Seleccione una de las opciones para analisis de texto:"
select OPCION in "SALIR" "statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter"
do
	[ -e $OPCION ] && echo "Elegir opcion valida!" && continue
	[ $REPLY == 1 ] && echo "Programa finalizado." && break
	echo "Opcion elegida: " $OPCION
	[[ $OPCION == 2 ]] && statsWords
done


#!/bin/bash
source /scripts/statsWords.sh
source /scripts/statsUsageWords.sh
source /scripts/findsNames.sh
source /scripts/statsSentences.sh
source /scripts/blankLinesCounter.sh


echo "Seleccione una de las opciones para analisis de texto:"
select OPCION in "SALIR" "statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter"
do
	[ -e $OPCION ] && echo "Elegir opcion valida!" && continue
	[ $REPLY == 1 ] && echo "Programa finalizado." && break
	
	[[ $REPLY == 2 ]] && echo "-----> Opcion elegida: $OPCION" && statsWords
	[[ $REPLY == 3 ]] && echo "-----> Opcion elegida: $OPCION" && statsUsageWords
	[[ $REPLY == 4 ]] && echo "-----> Opcion elegida: $OPCION" && findNames
	[[ $REPLY == 5 ]] && echo "-----> Opcion elegida: $OPCION" && statsSentences
	[[ $REPLY == 6 ]] && echo "-----> Opcion elegida: $OPCION" && blankLinesCounter
done


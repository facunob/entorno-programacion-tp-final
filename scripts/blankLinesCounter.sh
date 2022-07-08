#!/bin/bash

function blankLinesCounter {
  ROUTE_FILE="/text/text.txt"

  BLANK_LINES=$(grep -c '^$' $ROUTE_FILE)
  echo "El archivo tiene $BLANK_LINES lineas en blanco."
}

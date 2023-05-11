#!/bin/bash

OUTPUT=$1

(( $1 % 7 == 0 )) && OUTPUT="Plong"

(( $1 % 5 == 0 )) && OUTPUT="Plang"

(( $1 % 3 == 0 )) && OUTPUT="Pling"

echo $OUTPUT
exit 0

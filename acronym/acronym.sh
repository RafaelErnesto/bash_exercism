#!/bin/bash

INPUT=$1
OUTPUT=""
IFS="- " read -ra words <<< $INPUT
for word in "${words[@]}"; do
    OUTPUT+=${word:0:1}
done
IFS=" "
echo $OUTPUT

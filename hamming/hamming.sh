#!/bin/bash

SAMPLE_1=$1
SAMPLE_2=$2

if (( ${#SAMPLE_1} != ${#SAMPLE_2} )); then
    echo "The parameters size does not match"
    exit 1
fi


HAMMING_DISTANCE=0
for (( i=0; i < ${#SAMPLE_1}; i++ )); do
    if [ ${SAMPLE_1:i:1} != ${SAMPLE_2:i:1} ]; then
        HAMMING_DISTANCE=$((HAMMING_DISTANCE+1))
    fi
done

echo "The Hamming distance is ${HAMMING_DISTANCE}"
#!/bin/bash

touch velocita.dat
echo -n "" > velocita.dat

if [ $# -ne 1 ]
then
    echo "Numero di parametri passati errato"
    exit 1
fi

file="$1"

while read -r line
do
    S=$(echo "$line" | cut -d " " -f 1)
    RTTmin=$(echo "$line" | cut -d " " -f 2)
    
    if [ "$S" -le 1480 ]
    then
    	v=$(echo "scale=2; (4*($S+54)*8) / ($RTTmin)" | bc)
    else
        v=$(echo "scale=2; (16.627*$S+24320) / ($RTTmin-1.1)" | bc)
    fi
    
    echo $S" "$v >> velocita.dat
    
done < "$file"


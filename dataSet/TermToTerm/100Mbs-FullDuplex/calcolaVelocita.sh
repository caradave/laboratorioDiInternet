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
    
	min=5.2
    
    if [ "$S" -le 1480 ]
    then
		risultato=$(echo "$RTTmin < $min" | bc)
    	v=$(echo "scale=2; (2*($S+54)*8) / ($RTTmin)" | bc)
    else
        v=$(echo "scale=2; (2*(1.0392*$S-12)*8) / ($RTTmin-0.285)" | bc)
    fi
    
    echo $S" "$v >> velocita.dat
    
done < "$file"

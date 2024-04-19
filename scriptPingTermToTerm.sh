#!/bin/bash

touch misura.dat
echo -n "" > misura.dat

touch velocita.dat
echo -n "" > velocita.dat

for S in `seq 20 300 50000`;
do
	line=$(ping 10.0.5.1 -c 50 -s $S -i 0,2 | grep rtt | cut -d "=" -f 2);
	minRtt=$(echo $line | cut -d "/" -f 1);
	avgRtt=$(echo $line | cut -d "/" -f 2);
	maxRtt=$(echo $line | cut -d "/" -f 3);

    if [ "$S" -le 1480 ]
    then
    	v=$(echo "scale=2; (2*($S+54)*8) / ($RTTmin)" | bc)
    else
        v=$(echo "scale=2; (2*(1.0392*($S-1)+72)*8) / ($RTTmin-5.2)" | bc)
    fi
    
    echo $S" "$v >> velocita.dat
	echo $S" "$minRtt" "$avgRtt" "$maxRtt >> misura.dat;

done; 

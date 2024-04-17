#!/bin/bash

for S in `seq 1490 150 3000`;
do
	line=$(ping 10.0.5.1 -c 50 -s $S -i 0,2 | grep rtt | cut -d "=" -f 2);
	minRtt=$(echo $line | cut -d "/" -f 1);
	avgRtt=$(echo $line | cut -d "/" -f 2);
	maxRtt=$(echo $line | cut -d "/" -f 3);
	echo $S" "$minRtt" "$avgRtt" "$maxRtt >> misura.dat;
done; 

for S in `seq 3000 200 7000`;
do
	line=$(ping 10.0.5.1 -c 50 -s $S -i 0,2 | grep rtt | cut -d "=" -f 2);
	minRtt=$(echo $line | cut -d "/" -f 1);
	avgRtt=$(echo $line | cut -d "/" -f 2);
	maxRtt=$(echo $line | cut -d "/" -f 3);
	echo $S" "$minRtt" "$avgRtt" "$maxRtt >> misura.dat;
done; 

for S in `seq 7000 300 10000`;
do
	line=$(ping 10.0.5.1 -c 50 -s $S -i 0,2 | grep rtt | cut -d "=" -f 2);
	minRtt=$(echo $line | cut -d "/" -f 1);
    avgRtt=$(echo $line | cut -d "/" -f 2);
    maxRtt=$(echo $line | cut -d "/" -f 3);
    echo $S" "$minRtt" "$avgRtt" "$maxRtt >> misura.dat;
done;
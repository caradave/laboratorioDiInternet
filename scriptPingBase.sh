#!/bin/bash

touch misura.dat
echo "" > misure.dat

for S in `seq 0 50 1472`
do
	minRtt=$(ping 10.0.5.1 -c 50 -s $S -i 0,2| grep rtt | cut -d "=" -f 2 | cut -d "/" -f 1)
	echo $S$minRtt>> misura.dat
done; 


for S in `seq 1490 150 3000`
do
	minRtt=$(ping 10.0.5.1 -c 50 -s $S -i 0,2| grep rtt | cut -d "=" -f 2 | cut -d "/" -f 1)
	echo $S$minRtt>> misura.dat
done; 

for S in `seq 3000 200 7000`
do
	minRtt=$(ping 10.0.5.1 -c 50 -s $S -i 0,2| grep rtt | cut -d "=" -f 2 | cut -d "/" -f 1)
	echo $S$minRtt>> misura.dat
done; 

for S in `seq 7000 300 10000`
do
	minRtt=$(ping 10.0.5.1 -c 50 -s $S -i 0,2| grep rtt | cut -d "=" -f 2 | cut -d "/" -f 1)
	echo $S$minRtt>> misura.dat
done; 


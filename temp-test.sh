#!/bin/bash
clear
#nice little for loop

for f in {1..7}
do
	vcgencmd measure_temp
	sysbench --test=cpu --num-threads=4 --cpu-max-prime=15000 --validate run
done

vcgencmd measure_temp

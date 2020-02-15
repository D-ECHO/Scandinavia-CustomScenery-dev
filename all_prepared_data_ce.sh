#!/bin/bash
#required data for Scandinavia:
base=( 0 10 20 )
base2=( 50 60 70 )
for i in "${base[@]}"
	do
	for k in "${base2[@]}"
		do
		for ((f=$i;f<=$i+9;f++))
			do
			for ((g=$k;g<=$k+9;g++))
				do
				if [ $i == 0 ]
					then
					sh param_get_prepared_data.sh "e00"$i"n"$k "e00"$f"n"$g
				else
					sh param_get_prepared_data.sh "e0"$i"n"$k "e0"$f"n"$g
				fi
			done
		done
	done
done

#!/bin/bash
alphnum=( A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9 )
countries=(EF ES EN)
for c in "${countries[@]}"
	do
	mkdir $c && cd $c
	for i in "${alphnum[@]}"
		do
		for k in "${alphnum[@]}"
			do
			echo $c$i$k
			echo $i
			echo $k
			python /home/delta/FGSC-DEV/Scandinavia/data/airports/gateway_pull.py -i $c$i$k
			python /home/delta/FGSC-DEV/Scandinavia/data/airports/gateway_pull.py -i "X"$c$i$k
			python /home/delta/FGSC-DEV/Scandinavia/data/airports/gateway_pull.py -i "X"$c"00"$i$k
		done
	done
	cd ..
done

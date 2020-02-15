#!/bin/sh
if [ $1 = "big" ]
then
	for i in data/airports/big_airports/*.dat; do genapts850 --threads --input=$i --work=./work-final --dem-path=SRTM-1; done
else
	if [ -z ${$2+x} ]
	then
		for i in data/airports/$1/*.dat
		do
			if[ $i == *$2* ]
			then
				genapts850 --threads --input=$i --work=./work-final --dem-path=SRTM-1
			fi
		done
	else
		for i in data/airports/$1/*.dat; do genapts850 --threads --input=$i --work=./work-final --dem-path=SRTM-1; done
	fi
fi

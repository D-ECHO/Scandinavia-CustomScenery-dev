#!/bin/sh
if [ $1 = "big" ]
then
	for i in data/airports/big_airports/*.dat; do genapts850 --threads --input=$i --work=./work-final --dem-path=SRTM-1; done
else
	for i in data/airports/region$1/*.dat; do genapts850 --threads --input=$i --work=./work-final --dem-path=SRTM-1; done
fi

#!/bin/sh
cp -r ../osm_data/centraleurope/work/* work-osm/
for i in output/Terrain/*; do
	for k in $i/*; do
		mkdir work-osm/Default
		mkdir work-osm/Default/`echo $i | cut -d / -f 3`
		mkdir work-osm/Default/`echo $i | cut -d / -f 3`/`echo $k | cut -d / -f 4`
		cp -r ../osm_data/work/Default/`echo $i | cut -d / -f 3`/`echo $k | cut -d / -f 4`/*  work-osm/Default/`echo $i | cut -d / -f 3`/`echo $k | cut -d / -f 4`/
	done;
done

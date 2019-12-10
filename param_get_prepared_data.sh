mkdir work-corine
mkdir work-osm
for m in ../CORINE/work/*; do
	mkdir work-corine/`echo $m | cut -d / -f 4`
	mkdir work-corine/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`
	mkdir work-corine/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`
	cp -r $m/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`/* work-corine/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`/
done;
for m in ../osm_data/work/*; do
	mkdir work-osm/`echo $m | cut -d / -f 4`
	mkdir work-osm/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`
	mkdir work-osm/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`
	cp -r $m/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`/* work-osm/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`/
done;


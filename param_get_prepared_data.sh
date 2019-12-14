mkdir work-corine
for m in ../CORINE/work/*; do
	mkdir work-corine/`echo $m | cut -d / -f 4`
	mkdir work-corine/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`
	mkdir work-corine/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`
	cp -r $m/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`/* work-corine/`echo $m | cut -d / -f 4`/`echo $1 | cut -d / -f 3`/`echo $2 | cut -d / -f 4`/
done;
mkdir work-osm/Default/$1
mkdir work-osm/Default/$1/$2
cp -r ../osm_data/work/Default/$1/$2/*  work-osm/Default/$1/$2/

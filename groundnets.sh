cd groundnet
for i in ../data/airports/region$1/*.dat; do cp $i .; rm apt.dat; mv *.dat apt.dat; python aptdat2sqlite.py; python sqlite2xml.py; done
cp -r groundnet/Airports output/

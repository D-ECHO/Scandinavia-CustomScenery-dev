if [ $1 -eq 1 ]
then
	geo1='--min-lon=4.4 --max-lon=11.4 --min-lat=57.9 --max-lat=60.0'
	geo2='--min-lon=4.4 --max-lon=11.4 --min-lat=60.0 --max-lat=61.5'
	geo3='--min-lon=4.4 --max-lon=11.4 --min-lat=61.5 --max-lat=63.0'
	geo4='--min-lon=4.4 --max-lon=11.4 --min-lat=63.0 --max-lat=64.5'
	geo5='--min-lon=4.4 --max-lon=11.4 --min-lat=64.5 --max-lat=66.0'
elif [ $1 -eq 2 ]
then
	geo="--min-lon=11.4 --max-lon=20.0 --min-lat=54.9 --max-lat=66.0"
elif [ $1 -eq 3 ]
then
	geo="--min-lon=11.4 --max-lon=31.2 --min-lat=66.0 --max-lat=71.2"
elif [ $1 -eq 4 ]
then
	geo='--min-lon=17.8 --max-lon=18.0 --min-lat=59.3 --max-lat=59.5'
elif [ $1 -eq 5 ]
then
	geo='--min-lon=5.5 --max-lon=6.6 --min-lat=62.4 --max-lat=63.0' #Alesund
elif [ $1 -eq 6 ]
then
	geo='--min-lon=6.7 --max-lon=7.7 --min-lat=62.6 --max-lat=63.0' #Molde
fi
echo $1
echo $geo
tg-construct --work-dir=./work-final --output-dir=./output/Terrain `echo $geo` --threads=2 AirportArea SRTM-1 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Railroad Asphalt Airport Pond Lake DryLake Reservoir IntermittentLake Stream River IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown

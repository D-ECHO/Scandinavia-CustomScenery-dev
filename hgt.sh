alias hgtchop=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/hgtchop
alias terrafit=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/terrafit
for f in ${PWD}/data/SRTM-1/*.HGT; do hgtchop 1 "${f}" "${PWD}/work-final/SRTM-1"; done
terrafit work-final/SRTM-1 -e 1 -x 25000

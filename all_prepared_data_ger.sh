#!/bin/bash
#required data for germany:
i="e000n40"
for k in e005n47 e006n47 e007n47 e008n47 e009n47 e005n48 e006n48 e007n48 e008n48 e009n48 e005n49 e006n49 e007n49 e008n49 e009n49
do
	sh ./param_get_prepared_data.sh $i $k
done
m="e010n40"
for k in e010n47 e011n47 e012n47 e013n47 e010n48 e011n48 e012n48 e013n48 e010n49 e011n49 e012n49 e013n49
do
	sh ./param_get_prepared_data.sh $i $m
done
l="e000n50"
for k in e005n50 e006n50 e007n50 e008n50 e009n50 e005n51 e006n51 e007n51 e008n51 e009n51 e005n52 e006n52 e007n52 e008n52 e009n52 e005n53 e006n53 e007n53 e008n53 e009n53 e005n54 e006n54 e007n54 e008n54 e009n54
do
	sh ./param_get_prepared_data.sh $l $k
done
o="e010n50"
for k in e010n50 e011n50 e012n50 e013n50 e010n51 e011n51 e012n51 e013n51 e010n52 e011n52 e012n52 e013n52 e010n53 e011n53 e012n53 e013n53 e010n54 e011n54 e012n54 e013n54
do
	sh ./param_get_prepared_data.sh $o $k
done

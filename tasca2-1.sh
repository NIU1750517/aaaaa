#!/bin/bash

linies=`wc -l < $1`
for i in $(seq 1 $linies); 
do
    head -$i $1 | tail -1 >> temp2-1
    head -$i $2 | tail -1 >> temp2-1
done

echo "======================================================================"
echo "================ QUI VA GUANYAR DURANT ELS ANYS ...? ================="
echo " "
echo " "

awk -F, -v inici="$3" -v final="$4" '
    BEGIN { 
    trobat=0
    }
    
    {
	if (inici >= 1928 && final <= 2016)
	{
		if ($2 >= inici && $2 <= final) 
		{
			if (NR % 2 == 1) { print "MILLOR ACTOR " $2 " >> " $4 " (" $3 " anys) per " $5 " " $6 } 
			else { print "MILLOR ACTRIU " $2 " >> " $4 " (" $3 " anys) per " $5 " " $6 "\n" }
		}
	}
	else { trobat=1 }
    }
    
    END {
    if (trobat == 1) { print "Any no present al catàleg.\n" }
    }
' temp2-1

echo " "
echo "======================================================================"

rm temp2-1

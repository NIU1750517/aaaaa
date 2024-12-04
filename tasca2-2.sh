#!/bin/bash

sort -t, -k5 $1 > temp2-2_H
sort -t, -k5 $2 > temp2-2_D

echo "======================================================================"
echo "=============== QUI VA GUANYAR AMB LA PEL·LICULA ...? ================"
echo " " 
echo " "

awk -F, -v titol="$3" '
	{
		if ($5 ~ titol) { print "MILLOR ACTOR " $2 " >> " $4 " (" $3 " anys) per " $5 " " $6 } 
	}
' temp2-2_H >> temp2-2

awk -F, -v titol="$3" '
	{
		if ($5 ~ titol) { print "MILLOR ACTRIU " $2 " >> " $4 " (" $3 " anys) per " $5 " " $6 } 
	}
' temp2-2_D >> temp2-2


sort -t, -k5 temp2-2 > temp2-2_A

if [ `wc -l < temp2-2_A` -eq 0 ]
then
	echo "Pel·lícula no present al catàleg."
else
	cat temp2-2_A
fi

echo " "
echo " "
echo "======================================================================"

rm temp2-2_H
rm temp2-2_D
rm temp2-2
rm temp2-2_A

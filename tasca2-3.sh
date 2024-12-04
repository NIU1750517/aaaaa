#!/bin/bash

sort -t, -k4 $1 > temp2-3_H
sort -t, -k4 $2 > temp2-3_D

echo "======================================================================"
echo "=================== PEL·LÍCULES GUANYADES PER ...? ==================="
echo " " 
echo " "

awk -F, -v nom="$3" '
	{
		if ($4 ~ nom) { print "MILLOR ACTOR " $2 " >> " $4 " (" $3 " anys) per " $5 " " $6 } 
	}
' temp2-3_H >> temp2-3

awk -F, -v nom="$3" '
	{
		if ($4 ~ nom) { print "MILLOR ACTRIU " $2 " >> " $4 " (" $3 " anys) per " $5 " " $6 } 
	}
' temp2-3_D >> temp2-3


sort -t, -k4 temp2-3 > temp2-3_A

if [ $(wc -l < temp2-3_A) -eq 0 ]
then
	echo "Persona no present al catàleg."
else
	cat temp2-3_A
fi

echo " "
echo " "
echo "======================================================================"

rm temp2-3_H
rm temp2-3_D
rm temp2-3
rm temp2-3_A

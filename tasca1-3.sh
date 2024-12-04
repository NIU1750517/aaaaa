#!/bin/bash

clear

tail +2 $1 | sort -k3 -t, > tempActor3
tail +2 $2 | sort -k3 -t, > tempActress3

echo "======================================================================"
echo "=============== LLISTAT PER EDAT D'ACTORS I ACTRIUS =================="
echo " "
echo " "

echo " > LLISTAT OSCARS A MILLOR ACTOR:"
echo " "
awk -F, ' NR>1 {print $2" --"$4" ("$3" anys ) per "$5 $6}' tempActor3

echo " "
echo " "

echo " > LLISTAT OSCARS A MILLOR ACTRIU:"
echo " "
awk -F, ' NR>1 {print $2" --"$4" ("$3" anys ) per "$5 $6}' tempActress3

echo " "
echo " "
echo "======================================================================"

rm tempActor3
rm tempActress3

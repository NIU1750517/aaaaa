#!/bin/bash

tail +2 $1 | sort -k2 >> tempActor
tail +2 $2 | sort -k2 >> tempActress

clear
echo "======================================================================"
echo "========== LLISTAT D'ACTORS I ACTRIUS PER DATA DEL PREMI ============="
echo " "
echo " "

echo " > LLISTAT OSCARS A MILLOR ACTOR:"
echo " "
awk -F, ' NR>1 {print $2" --"$4" ("$3" anys ) per "$5 $6}' tempActor

echo " "
echo " "

echo " > LLISTAT OSCARS A MILLOR ACTRIU:"
echo " "
awk -F, ' NR>1 {print $2" --"$4" ("$3" anys ) per "$5 $6}' tempActress

echo " "
echo " "
echo "======================================================================"

rm tempActor
rm tempActress

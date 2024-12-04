#!/bin/bash

clear

tail +2 $1 | sort -k5 -t, > tempActor2
tail +2 $2 | sort -k5 -t, > tempActress2

echo "======================================================================"
echo "================= LLISTAT ALFABÈTIC DE PEL·LÍCULES ==================="
echo " "
echo " "

echo " > LLISTAT OSCARS A MILLOR ACTOR:"
echo " "
awk -F, ' NR>1 {print $2" --"$4" ("$3" anys ) per "$5 $6}' tempActor2

echo " "
echo " "

echo " > LLISTAT OSCARS A MILLOR ACTRIU:"
echo " "
awk -F, ' NR>1 {print $2" --"$4" ("$3" anys ) per "$5 $6}' tempActress2

echo " "
echo " "
echo "======================================================================"

rm tempActor2
rm tempActress2

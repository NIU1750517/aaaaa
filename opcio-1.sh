#!/bin/bash

clear

MENU()
{
	echo "---------------------------------------------------"
	echo "             1 - Llistats del catàleg              " 
	echo "---------------------------------------------------"
	echo "1 Llistat d'actors i actrius per data del premi."
	echo "2 Llistat alfabètic de pel·lícules."
	echo "3 Llistat per edat d'actors i actrius."
	echo "0 Tornar al menú anterior."
	echo " "
}



tasca=1
until [ $tasca -eq 0 ]
do
	MENU
	echo -n "Introdueix una Opció:   "
	read tasca

	if [ $tasca -eq 1 ] 
	then
		clear
		bash tasca1-1.sh $1 $2
		read -n 1
		clear

	elif [ $tasca -eq 2 ] 
	then
		clear
		bash tasca1-2.sh $1 $2
		read -n 1
		clear

	elif [ $tasca -eq 3 ]
	then
		clear
		bash tasca1-3.sh $1 $2
		read -n 1
		clear


	elif [ $tasca -eq 0 ] 
	then
		clear
		echo " "
		echo "Tornant al menú anterior..."
		sleep 1
		clear
		
	else
		clear
		echo  " "
		echo -n "ERROR: Tasca no vàlida."
		clear
		
	fi
done

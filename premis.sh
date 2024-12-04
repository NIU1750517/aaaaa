#!/bin/bash

clear

MENU()
{
	echo "---------------------------------------------------"
	echo "Catàleg de guanyadors i guanyadores d'Oscars"
	echo "---------------------------------------------------"
	echo "1 Llistats del catàleg."
	echo "2 Cerca al catàleg."
	echo "3 Com ets d'Expert?"
	echo "4 Gestió del catàleg."
	echo "0 Sortir."
	echo " "
}

enDesenvolupament()
{
	clear
	echo " "
	echo -n "En desenvolupament..."
	read -n 1
	clear
}

opcioNoValida()
{
	clear
	echo " "
	echo -n "ERROR: Opció no vàlida."
	sleep 1
	clear
}

opcio=1
until [ $opcio -eq 0 ]
do
	MENU
	echo -n "Introdueix una Opció:   "
	read opcio

	if [ $opcio -eq 1 ] 
	then
		bash opcio-1.sh $1 $2
	elif [ $opcio -eq 2 ] 
	then
		bash opcio-2.sh $1 $2
	elif [ $opcio -eq 3 ]
	then
		enDesenvolupament
		
	elif [ $opcio -eq 4 ] 
	then
		enDesenvolupament
	elif [ $opcio -eq 0 ] 
	then
		clear
		echo " "
		echo "Gracies per visitar 'Amor pel setè Art'. Fins la propera!"
		sleep 2
		clear
	else
		opcioNoValida
	fi
done

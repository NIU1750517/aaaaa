#!/bin/bash

clear

MENU()
{
	echo "---------------------------------------------------"
	echo "             2 - Cerca al catàleg	                 " 
	echo "---------------------------------------------------"
	echo "1 Qui va guanyar durant els anys ...?"
	echo "2 Qui va guanyar amb la pel·lícula ...?"
	echo "3 Pel·lícules guanyades per ...?"
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
		surt=0
		until [ $surt -eq 1 ]
		do
			clear
			echo " "
			echo -n ">> Any d'inici: "
			read any_ini
			echo -n ">> Any final: "
			read any_fi
			echo " "
			echo " "
			bash tasca2-1.sh $1 $2 $any_ini $any_fi
			echo " "
			echo " "
			echo -n "Vols tornar cercar? (Sí/No)  "
			read resposta
			if [ $resposta = 'No' ]
			then
				surt=1
				clear
			fi
		done

	elif [ $tasca -eq 2 ] 
	then
		surt=0
		until [ $surt -eq 1 ]
		do
			clear
			echo " "
			echo -n ">> Nom de la pel·lícula: "
			read titol
			echo ""
			echo " "
			bash tasca2-2.sh $1 $2 $titol
			echo " "
			echo " "
			echo -n "Vols tornar cercar? (Sí/No)  "
			read resposta
			if [ $resposta = 'No' ]
			then
				surt=1
				clear
			fi
		done


	elif [ $tasca -eq 3 ]
	then
		surt=0
		until [ $surt -eq 1 ]
		do
			clear
			echo " "
			echo -n ">> Nom del actor o actriu: "
			read nom
			echo ""
			echo " "
			bash tasca2-3.sh $1 $2 $nom
			echo " "
			echo " "
			echo -n "Vols tornar cercar? (Sí/No)  "
			read resposta
			if [ $resposta = 'No' ]
			then
				surt=1
				clear
			fi
		done


	elif [ $tasca -eq 0 ] 
	then
		clear
		echo " "
		echo "Tornant al menú anterior..."
		sleep 1
		clear
		
	else
		clear
		echo " "
		echo -n "ERROR: Tasca no vàlida."
		clear
		
	fi
done

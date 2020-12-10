#!/bin/bash


echo "---------------------------------------------------------
Base de Dades d’actors i actrius guanyadors/es de l’Oscar
---------------------------------------------------------
1. Històric d’Oscars.
2. Qui va guanyar ...?
3. Ets un Expert?
4. Altes, baixes i modificacions.
0. Sortir. 
"
read X

while [ "$X" -ne 0 ]  
do

case $X in 
1) 
	clear
	echo "En desemvolupaement"
	
	echo -e "Presione cualquier tecla para continuar \n"
	read -n 1 -s -r -p ""
	
;;
2)
	clear
	echo "En desemvolupaement"


	
	echo -e "Presione cualquier tecla para continuar \n"
	read -n 1 -s -r -p ""
;;
3)
	clear
	echo "En desemvolupaement"
	
	echo -e "Presione cualquier tecla para continuar \n"
	read -n 1 -s -r -p ""
;;
4)
	clear
	echo "En desemvolupaement"
	
	echo -e "Presione cualquier tecla para continuar \n"
	read -n 1 -s -r -p ""
;;	
*)
	echo "Error: Opcio no valida"
	sleep 3
	clear
	echo "---------------------------------------------------------
Base de Dades d’actors i actrius guanyadors/es de l’Oscar
---------------------------------------------------------
1. Històric d’Oscars.
2. Qui va guanyar ...?
3. Ets un Expert?
4. Altes, baixes i modificacions.
0. Sortir. 
";;
esac

read X
done

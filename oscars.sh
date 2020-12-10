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
	echo "---------------------------------------------------------
Base de Dades d’actors i actrius guanyadors/es de l’Oscar
---------------------------------------------------------
1. Històric d’Oscars.
2. Qui va guanyar ...?
3. Ets un Expert?
4. Altes, baixes i modificacions.
0. Sortir. 
";;
2)
	clear
	echo "--------------------------------------------------
Qui va guanyar ...?
--------------------------------------------------
2.1 Mostrar l’actor i l’actriu que van guanyar un any
determinat.
2.2 Mostrar els Oscars a millor actriu guanyats per una actriu
determinada.
2.3 Mostrar els Oscars a millor actriu o actor que ha obtingut
una pel·lícula determinada. "
read -s M

while [ "$M" -ne 1000 ]  
do

case $M in
1)
	read any
	
	echo -n "Guanyadors any $any
-------------------
Oscar a millor actor: "
grep -F $any oscar_age_male.csv | awk -F, '{print $4}' 
echo -n "Edat: "
grep -F $any oscar_age_male.csv | awk -F, '{print $3}' 
echo  -n "Pel·lícula: " 
grep -F $any oscar_age_male.csv | awk -F, '{print $5}' 
echo -n "------------------
Oscar a millor actriu: "
grep -F $any oscar_age_female.csv | awk -F, '{print $4}' 
echo -n "Edat: "
grep -F $any oscar_age_female.csv | awk -F, '{print $3}' 
echo -n "Pel·lícula: " 
grep -F $any oscar_age_female.csv | awk -F, '{print $5}' 
echo "";;
2)
read Actriu
echo "Oscars a millor actriu obtinguts per: $Actriu
Edat Any Pel·lícula"
grep -F "$Actriu" oscar_age_female.csv | awk -F, '{printf $3}{printf $2}{printf $5}{print""}'

;;
3)
read pelicula
a=0
grep -F "$pelicula" oscar_age_female.csv 
grep -F "$pelicula" oscar_age_male.csv 
echo "Oscars a millor actriu i actor obtinguts per:"
echo $pelicula
echo -n "Any:"
grep -F "$pelicula" oscar_age_male.csv | awk -v a=$2 '{print $2}'
grep -F "$pelicula" oscar_age_female.csv | awk -v a=$2 '{printf $2}'
echo $a
echo -n "----------------------------------------------
actriu: " 
grep -F "$pelicula" oscar_age_female.csv | awk -F, '{print $4}' 
echo -n "edat: "
grep -F "$pelicula" oscar_age_female.csv | awk -F, '{print $3}' 
echo -n "actor: "
grep -F "$a" oscar_age_male.csv | awk -F, '{print $4}' 
echo -n "edat: "
grep -F "$a" oscar_age_male.csv | awk -F, '{print $3}' 
;;
esac
done
	
	echo -e "Presione cualquier tecla para continuar \n"
	read -n 1 -s -r -p ""
	echo "---------------------------------------------------------
Base de Dades d’actors i actrius guanyadors/es de l’Oscar
---------------------------------------------------------
1. Històric d’Oscars.
2. Qui va guanyar ...?
3. Ets un Expert?
4. Altes, baixes i modificacions.
0. Sortir. 
";;
3)
	clear
	echo "En desemvolupaement"
	
	echo -e "Presione cualquier tecla para continuar \n"
	read -n 1 -s -r -p ""
	echo "---------------------------------------------------------
Base de Dades d’actors i actrius guanyadors/es de l’Oscar
---------------------------------------------------------
1. Històric d’Oscars.
2. Qui va guanyar ...?
3. Ets un Expert?
4. Altes, baixes i modificacions.
0. Sortir. 
";;
4)
	clear
	echo "En desemvolupaement"
	
	echo -e "Presione cualquier tecla para continuar \n"
	read -n 1 -s -r -p ""
	echo "---------------------------------------------------------
Base de Dades d’actors i actrius guanyadors/es de l’Oscar
---------------------------------------------------------
1. Històric d’Oscars.
2. Qui va guanyar ...?
3. Ets un Expert?
4. Altes, baixes i modificacions.
0. Sortir. 
";;
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

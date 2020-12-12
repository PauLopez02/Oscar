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
	
echo "
--------------------------------------------------
                 Històric d’Oscars
--------------------------------------------------
1.1 Mostrar històric d’Oscars a millor actor (alfabètic).
1.2 Mostrar històric d’Oscars a millor actriu (edat)
1.3 Mostrar històric d’Oscars (actors/actrius)."

read opcio

case $opcio in

 3)
   cat oscar_age_male.csv | sort -k 2 -n > oscar_age_male_ordenatany.csv
   cat oscar_age_female.csv | sort -k 2 -n > oscar_age_female_ordenatany.csv
   lineas=`wc -l < oscar_age_female_ordenatany.csv`
   a=1
   
   until [ $a -eq $lineas ]
   do
   any=`head -$a oscar_age_male_ordenatany.csv | tail -1 | cut -d"," -f2`
   
   nomm=`head -$a oscar_age_male_ordenatany.csv | tail -1 | cut -d"," -f4`
   edatm=`head -$a oscar_age_male_ordenatany.csv | tail -1 | cut -d"," -f3`
   peliculam=`head -$a oscar_age_male_ordenatany.csv | tail -1 | cut -d"," -f5`
   nomf=`head -$a oscar_age_female_ordenatany.csv | tail -1 | cut -d"," -f4`
   edatf=`head -$a oscar_age_female_ordenatany.csv | tail -1 | cut -d"," -f3`
   peliculaf=`head -$a oscar_age_female_ordenatany.csv | tail -1 | cut -d"," -f5`
   
   echo -n "
any: $any
actor: $nomm
edat: $edatm
pel·lícula: $peliculam
actriu: $nomf
edat: $edatf
pel·lícula: $peliculaf
----------------------------------------------------------------"
   ((a++))
   
   done  
   ;;
  
 esac
	
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

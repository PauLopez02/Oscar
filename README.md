Enrique Cerrudo Aguilar 1604244
Pau Lopez Rodriguez 1603995

Durant aquestes setmanes de desenvolupament de la part A de la primera pràctica de la assignatura hem intentat organitzar el volum de treball equitativament. Degut a que només som dos, va ser més difícil repartir la feina a fer. Una vegada la vam repartir, ens vam posar a treballar cadascú en la seva part en diferents terminals. Com és normal, van sorgir problemes a l’hora de crear el codi principalment deguts al plantejament del problema o al desconeixement de les comandes necessàries per fer-ho. Quan passava això, els dos ens fixàvem en el problema de manera que la persona que l’estava elaborant rebia un nou punt de vista per part del company o intentava fer el script amb unes altres comandes que l’altre company controlava més. D’aquesta forma vam poder crear la tasca 2.3 o 1.1 que ens van donar bastants problemes des de un principi.  Per exemple en la tasca 2.3 vam patir molt a l’hora d’analitzar els dos fitxers i extreure informació de ambdós. Vam agafar una variable comú (l’any) i mitjançant el condicional if vam aconseguir que si alguna de les dos variables any no es trobes a un dels fitxers, l’altre registraria el valor correcte. D’altra manera, en la tasca 1.1 no sabíem ben be com anar agafant els elements de cada fila successivament. Finalment, mitjançant un bucle until inicialitzat a 0, fins a una variable que tenia com a valor el numero de línies del fitxer ho vam aconseguir.

 

Pel que fa a les comandes utilitzades, hem fet molt d’us de awk, cut i grep per treure elements determinats dels fitxers oscar_age_female.csv i oscar_age_male.csv. Degut a la nostra inexperiència en scripts, vam fer múltiples cerques a internet per trobar funcions especifiques d’aquestes comandes (com per exemple read -n 1 -s -r -p ”” per fer el “pulse cualquier tecla para continuar”, sort -k i sort -k -n per ordenar els fitxers d’una forma determinada  o echo -n per evitar els salts de línies.) tot i que també vam intentar trobar aquesta informació amb la comanada man. En el cas dels bucles utilitzats, vam optar per crear un case per a les diferents opcions. Dins de les opcions vam fer molt us del bucle until i també del bucle do.

 

A continuació, per executar el codi correctament nomes cal situar-se al directori main (que es el nostre directori principal) i com es obvi, utilitzar la comanda “$./oscars.sh” o “$bash oscars.sh”. 

NOTA: A l’hora d’executar al programa l’opció 1.1 equival a introduir un 1, la 1.2 a un 2 i així successivament.

 

Com a conclusió volem ressaltar que ha sigut una pràctica que ens a trigat bastant temps per elaborar-la correctament però que ens ha ajudat molt a familiaritzar-nos amb els scripts de Linux i la manera de treballar de prova i error pròpia de la informàtica. A més a més, hem practicat molts les comandes del git per clonar, crear i fusionar directoris i com fer git push i git pull correctament. Creiem que el github es una gran eina per treballar en equip però ens va suposar un repte al començament ja que no estàvem del tot familiaritzat amb ell.

						{Algo: Jeu de nim

BUT:faire un jeu de Nim jouable par deux personnes
ENTREE:nombre d'allumette que va retirer chaque joueur 
SORTIE:nombre d'allumette restantes, victoire ou défaite

CONSTANTE: 

VARIABLE:
nb_allumette,nb_retirer: entier
victoire: booleen


DEBUT

	ECRIRE: "Debut de partie de jeu de Nim a deux joueurs"
	nb_allumette<-21
	nb_retirer<-0
	victoire<-FAUX

	Repeter

		ECRIRE:"Veuillez choisir le nombre d'allumette a retirer"
		LIRE nb_retirer

		SI nb_retirer <1 OU >3 ALORS
			ECRIRE:"Votre nombre d'allumette a retirer n'est pas valide"
		SINON
		
			nb_allumette<-nb_allumette-nb_retirer

			SI nb_allumette=1 ALORS
				victoire<-VRAI
				ECRIRE:"Vous avez gagner !"
			SINON
				ECRIRE:"nombre d allumettes : ",nb_allumette," Au joueur suivant"

			SI nb_allumette<=0 ALORS
				victoire<-VRAI
				ECRIRE:"Vous avez perdu !"		
					

	Jusqu'a victoire=VRAI
END.}

program Jeu_de_Nim_deux_joueurs;

uses crt;

var
 nb_allumette,nb_retirer:integer;
 victoire:boolean;

begin
 clrscr;

	writeln('Debut de partie de jeu de Nim a deux joueurs');
	nb_allumette:=21;
	nb_retirer:=0;
	victoire:=false;

	Repeat

		writeln('Veuillez choisir le nombre d allumette a retirer');
		readln(nb_retirer);

		IF (nb_retirer<1) OR (nb_retirer>3) THEN
			writeln('Votre nombre d allumette a retirer n est pas valide')
		ELSE
			nb_allumette:= nb_allumette-nb_retirer;

			IF nb_allumette=1 THEN
				begin
				victoire:=true;
				writeln('Vous avez gagne !');
				end
			ELSE	
				begin			
				writeln('nombre d allumette : ',nb_allumette,' Au joueur suivant')
				end;
			
			IF nb_allumette<=0 THEN
				begin
				victoire:=true;
				writeln('Vous avez perdu !');
				end;
		
	until victoire=true;
readln;	
END.
	














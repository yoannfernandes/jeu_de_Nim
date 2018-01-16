						{Algo: Jeu de nim

BUT:faire un jeu de Nim jouable seul face a un ia
ENTREE:nombre d'allumette que va retirer le joueur
SORTIE:nombre d'allumette restantes, victoire ou défaite


CONSTANTE:

VARIABLE:
nb_allumette,nb_retirer: entier
nb_ia: entier
win: booleen


DEBUT

	ECRIRE: "Debut de partie de jeu de Nim a deux joueurs"
	nb_allumette<-21
	nb_retirer<-0

	Repeter

		ECRIRE:"Veuillez choisir le nombre d'allumette a retirer"
		LIRE nb_retirer

		SI nb_retirer <1 OU >3 ALORS
			ECRIRE:"Votre nombre d'allumette a retirer n'est pas valide"
		SINON
			nb_allumette= nb_allumette - nb_ retirer
		
			nb_allumette<-nb_allumette-nb_retirer

			SI nb_allumette=1 ALORS
				ECRIRE "vous avez perdu !"
			SINON
				DEBUT
				ECRIRE "nombre d'allumette : ",nb_allumette,"au joueur suivant"
				randomize
				nb_ia= random(3)+1
				nb_allumette= nb_allumette- nb_ia
				ECRIRE "l'adversaire a retirer ",nb_ia," allumette"
				END
			SI (nb_allumette=0)	ALORS
				DEBUT
				win=TRUE
				ECRIRE "vous avez gagné"
				END
		END
	JUSQU'A ((nb_allumette <=0) OU (win=TRUE))			
END.}






program Jeu_de_Nim_solo;

uses crt;

var
 nb_allumette,nb_retirer:integer;
 nb_ia:integer;
 win:boolean;

begin
 clrscr;

	writeln('Debut de partie de jeu de Nim solo');
	nb_allumette:=21;
	nb_retirer:=0;
	win:=false;

	Repeat
	 begin

		writeln('Veuillez choisir le nombre d allumette a retirer');
		readln(nb_retirer);

		IF ((nb_retirer<1) OR (nb_retirer>3)) THEN
			writeln('Votre nombre d allumette a retirer n est pas valide')
		ELSE
			nb_allumette:= nb_allumette-nb_retirer;

			IF (nb_allumette=1) THEN
				writeln('Vous avez perdu !')
			ELSE
			 begin			
				writeln('nombre d allumette : ',nb_allumette,' Au joueur suivant');
				randomize;
				nb_ia:= random(3)+1;
				nb_allumette:= nb_allumette-nb_ia;
				writeln('l adversaire a retirer ',nb_ia,' allumettes')	
			 END;

   			IF (nb_allumette=1) THEN
   			 begin
   			 	win:=true;
				writeln('Vous avez gagné');
				readln;
			 END;				
	 END;		    	
	until ((nb_allumette<=0) OR (win=true));
 readln;	
END.
	






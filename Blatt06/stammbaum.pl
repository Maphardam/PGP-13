% male(Guy).

male(fritz).
male(heinz).
male(anton).
male(wilhelm).
male(hugo).
male(alfons).

% female(Gal).

female(wilhelmine).
female(brunhilde).
female(elfriede).
female(theresia).
female(maria).

% married (Husband, Wife).

married(fritz, wilhelmine).
married(heinz, brunhilde).
married(anton, elfriede).
married(wilhelm, theresia).

% mother (Mother, Child).

mother(wilhelmine, anton).
mother(wilhelmine, theresia).
mother(brunhilde, wilhelm).
mother(elfriede, maria).
mother(elfriede, hugo).
mother(theresia, alfons).

% father (Father, Child).

father(Father, Child) :- married(Father, Mother), mother(Mother, Child).

% grandma (Grandma, Grandchild).

grandma(Grandma, Grandchild) :- mother(Grandma, Mother), 
				mother(Mother, Grandchild);
			   	mother(Grandma, Father), 
				father(Father, Grandchild).

% grandpa (GrandPa, Child).

grandpa(Grandpa, Grandchild) :- married(Grandpa, Grandma), 
				grandma(Grandma, Grandchild).

% mother_in_law (Mil, Cil).

mother_in_law(Mil, Cil) :- married(Cil, Wife), mother(Mil, Wife);
			   married(Husband, Cil), mother(Mil, Husband).

% father_in_law (Fil, Cil).

father_in_law(Fil, Cil) :- married(Cil, Wife), father(Fil, Wife);
			   married(Husband, Cil), father(Fil, Husband).

% aunt (Aunt, NephewNiece).

aunt(Aunt, NephewNiece) :- female(Aunt), mother(Grandma, Aunt), 
			   grandma(Grandma, NephewNiece), 
			   not(mother(Aunt, NephewNiece));
 		     	   female(Aunt), mother_in_law(Grandma, Aunt), 
			   grandma(Grandma, NephewNiece), 
			   not(mother(Aunt, NephewNiece)).

% uncle (Uncle, NephewNiece).

uncle(Uncle, NephewNiece) :- male(Uncle), mother(Grandma, Uncle), 
			     grandma(Grandma, NephewNiece), 
			     not(father(Uncle, NephewNiece));
		       	     male(Uncle), mother_in_law(Grandma, Uncle), 
			     grandma(Grandma, NephewNiece), 
			     not(father(Uncle, NephewNiece)).

% ancestor(Ancestor, Descendant).

ancestor(Ancestor, Descendant) :- mother(Ancestor, Descendant).
ancestor(Ancestor, Descendant) :- father(Ancestor, Descendant).
ancestor(Ancestor, Descendant) :- mother(Ancestor, X), ancestor(X, Descendant);
				  father(Ancestor, X), ancestor(X, Descendant).

% related(Relative, Person).

related(Relative, Person) :- ancestor(Relative, Person);
			     ancestor(X, Person), ancestor(X, Relative). 

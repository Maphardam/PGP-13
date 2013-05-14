teilnehmer(anton, inf).
teilnehmer(hagen, cv).
teilnehmer(gunther, cv).
teilnehmer(adele, inf).
teilnehmer(uta, cv).
teilnehmer(anna, inf).

mann(anton).
mann(hagen).
mann(gunther).

frau(adele).
frau(uta).
frau(anna).

% a)

teams(X,Y) :- teilnehmer(X,A), teilnehmer(Y,B), X \= Y.

% b)

teams1(X,Y) :- teilnehmer(X,A), teilnehmer(Y,B), X \= Y, mann(X), frau(Y).

% c)

teams2(X,Y) :- teilnehmer(X,A), teilnehmer(Y,B), X \= Y, mann(X), frau(Y), 			A \= B.

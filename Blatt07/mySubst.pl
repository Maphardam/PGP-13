<<<<<<< HEAD
mySubstOne(_,_,[],[]).
mySubstOne(E, S, [E|L], [S|N]) :- areEqual(L,N), !.
mySubstOne(E, S, [H|L], [H|NList]) :- H \= E, mySubstOne(E,S,L,NList).


mySubstAll(_,_,[],[]).
mySubstAll(E, S, [E|L], [S|NList]) :- mySubstAll(E, S, L, NList), !.
mySubstAll(E, S, [H|L], [H|NList]) :- H \= E, mySubstAll(E, S, L, NList). 


areEqual([],[]).
areEqual([H|L], [H|N]) :- areEqual(L,N).
=======
--platzhalter
>>>>>>> d111a43d441823275b6f8e291974c0823c498b49

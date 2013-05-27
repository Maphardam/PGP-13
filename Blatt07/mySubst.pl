mySubstOne(_,_,[],[]).
mySubstOne(E, S, [E|_], [S|_]) :- !.
mySubstOne(E, S, [_|L],[_|NList]) :- mySubstOne(E, S, L, NList).

mySubstAll(_,_,[],[]).
mySubstAll(E, S, [E|L], [S|NList]) :- mySubstAll(E, S, L, NList), !.
mySubstAll(E, S, [_|L], [_|NList]) :- mySubstAll(E, S, L, NList). 

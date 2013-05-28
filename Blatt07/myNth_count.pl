myNth([H|L],N,E) :- (N == 0 -> H == E, ! ; M is N-1, myNth(L,M,E),!).

count([],_,N)    :- N == 0. 
count([E|T],E,N) :- M is N-1, count(T,E,M), !.
count([_|T],E,N) :- count(T,E,N).


% Es ist nicht moeglich, bei myNth nach dem Element zu suchen, das an n-ter Stelle steht. 
% Eine Ueberpruefung ist aber moeglich.
% Bei count verhaelt es sich aehnlich: es kann nicht nach der Anzahl der Elemente in der Liste
% gefragt werden.

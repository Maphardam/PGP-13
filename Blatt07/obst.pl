obst(apfel).
obst(pfirsich) :- !.
obst(birne).

% ?- obst(X).
% X = apfel ;
% X = pfirsich.

% ?- obst(X), obst(Y).
% X = Y, Y = apfel ;
% X = apfel,
% Y = pfirsich ;
% X = pfirsich,
% Y = apfel ;
% X = Y, Y = pfirsich.

% ?- obst(X), !, obst(Y).
% X = Y, Y = apfel ;
% X = apfel,
% Y = pfirsich.


pos(X) :- X > 0.
neg(X) :- X < 0.
zero(X) :- X == 0.

class(N,pos) :- pos(N),!.
class(N,neg) :- neg(N),!.
class(N,zero) :- zero(N).


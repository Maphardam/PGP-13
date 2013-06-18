gradliste(GradList, X) :- merge(GradList, MergedList), countAllElements(MergedList, X), !.

testEulerweg(GradList) :- gradliste(GradList, NewList), countOdds(NewList, C), (C == 2 ; C == 0), !.

% auxiliary functions
merge([] , []).
merge([[X,Y]|Edges], [X,Y|Rest]) :- merge(Edges, Rest).

count([], _ , 0).
count([Y|Rest], X, C) :- Y \= X, count(Rest, X, C).
count([X|Rest], X, C) :- count(Rest, X, C1), C is C1+1.

countAllElements([], []).
countAllElements([H|Rest], X) :- count([H|Rest], H, C), append([[H,C]], X1, X), subtract(Rest, [H], NewRest), countAllElements(NewRest, X1).

countOdds([], 0).
countOdds([[_,CX]|Rest], C) :- R is mod(CX, 2), (R \= 0-> countOdds(Rest, C1), C is C1+1; countOdds(Rest, C)).

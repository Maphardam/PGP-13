queenThreat(Pos, QueenThreats) :- horizontal(Pos, QueenThreats),vertical(Pos, QueenThreats), diagonal(Pos, QueenThreats).


pos(Pos, Y, X) :- Pos1 is Pos -1, Y1 is div(Pos1, 8), X1 is mod(Pos1, 8),
		  		  Y is Y1 +1, X is X1+1.


horizontal(Pos, QueenThreats):- rightHorizontal(Pos, QueenThreats), leftHorizontal(Pos, QueenThreats).
rightHorizontal(Pos, QueenThreats) :- pos(Pos, _, X), member(Pos, QueenThreats), 
										(X < 8 -> Pos1 is Pos +1, rightHorizontal(Pos1, QueenThreats); !).								
leftHorizontal(Pos, QueenThreats) :- pos(Pos, _,X), member(Pos, QueenThreats), 
										(X > 1 -> Pos1 is Pos -1, leftHorizontal(Pos1, QueenThreats); !).

vertical(Pos, QueenThreats) :-  downVertical(Pos, QueenThreats), upVertical(Pos, QueenThreats).
downVertical(Pos, QueenThreats) :- pos(Pos, Y, _), member(Pos, QueenThreats), (Y < 8 -> Pos1 is Pos + 8, downVertical(Pos1, QueenThreats); !).
upVertical(Pos, QueenThreats) :- pos(Pos, Y, _), member(Pos, QueenThreats), (Y > 1 -> Pos2 is Pos -8, upVertical(Pos2, QueenThreats); !).


diagonal(Pos, QueenThreats) :-  member(Pos, QueenThreats), upLeft(Pos, QueenThreats), upRight(Pos, QueenThreats), downLeft(Pos, QueenThreats),
								downRight(Pos, QueenThreats).

upLeft(Pos, QueenThreats) :- pos(Pos, Y, X), member(Pos, QueenThreats), (X > 1, Y > 1 -> Pos1 is Pos -9, upLeft(Pos1, QueenThreats);!).
upRight(Pos, QueenThreats) :- pos(Pos, Y, X), member(Pos, QueenThreats), (X < 8, Y > 1 -> Pos1 is Pos -7, upRight(Pos1, QueenThreats);!).
downLeft(Pos, QueenThreats) :- pos(Pos, Y, X), member(Pos, QueenThreats), (X > 1, Y < 8 -> Pos1 is Pos +7, downLeft(Pos1, QueenThreats);!).
downRight(Pos, QueenThreats) :- pos(Pos, Y, X), member(Pos, QueenThreats), (X < 8, Y < 8 -> Pos1 is Pos +9, downRight(Pos1, QueenThreats);!).

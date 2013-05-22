thirdE(X,L) :- append(L, [], [_,_,X|_]).

withoutL(L1,L2) :- append(L1, [_], L2).

lastEl(X, Lst) :- withoutL(Y,Lst), append(Y,[X],Lst).

threeT(L,SL) :- append(SL,SL,ML), append(SL, ML, L).

% plusEl weiß ich nicht

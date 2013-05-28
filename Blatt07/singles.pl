% first try : failed
% singles(L,SL) :- singles1(L,[],SL).
% singles1([],_,[_]).
% singles1([H|L],TL, EL) :- (member(H,TL) -> (member(H,EL) -> delete(EL,H,NL),singles1(L,TL,NL) ; singles1(L,TL,EL)) ;
% 			  append(TL,[H],NTL), append(EL,[H],NEL), singles1(L,NTL,NEL)). 

% second try

singles(L,SL) :- singles1([],L,SL).

singles1(_,[],_).
singles1(Init, [H|L], SL) :- not(member(H,Init)), not(member(H,L)), member(H,SL), append(Init,[H],NInit), 
			     singles1(NInit, L,SL);
			     append(Init,[H],NInit), singles1(NInit, L,SL).

tier(katze).
tier(maus).
tier(katzentoeter).

jagt(katze, maus).
jagt(katzentoeter, katze).
jagt(katzentoeter, maus).

%?-jagt(X,maus).
%?-jagt(X,katze).
%?-jagt(X,_), jagt(_,X).
%?-jagt(_,X).
%?-jagt(X,_), not(jagt(_,X)).
%?-jagt(X,Y).

%    title               interpret,               rank days  price
song(on_the_floor,	jennifer_lopez, 	    1,  72,  0.98).
song(sweat, 		snoop_dogg_vs_david_guetta, 2,  56,  0.98).
song(a_night_like_this, caro_emerald, 		    3,  65,  0.98).
song(hollywood_hills, 	sunrise_avenue, 	    4,  104, 0.98).
song(s_und_m, 		rihanna, 		    5,  103, 0.98).
song(you_and_me, 	milow, 			    6,  48,  0.98).
song(hello, 		martin_solveig_dragonette,  7,  183, 0.91).
song(born_this_way, 	lady_gaga, 		    8,  83,  0.98).
song(more, 		usher, 			    9,  93,  0.99).
song(still, 		jupiter_jones, 		    10, 69,  0.68).

% ?- song(X,_,3,_,_).
% ?- song(X,usher,_,_,_).
% ?- song(you_and_me, X,_,_,_).
% ?- song(X,_,_,183,_).
% ?- song(X,_,_,_,0.98).
% ?- song(X,_,_,Y,_), Y > 100.

interleave :: [a] -> [a] -> [a]

interleave [] _ = []
interleave (x:xs) ys = x : (interleave ys xs)

--test data
--interleave [1 .. 10] [11 .. 20]
--result : [1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,10,20]

	
	

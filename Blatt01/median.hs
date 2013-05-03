median :: Int -> Int -> Int -> Int

median x y z 
	| x >= y && x <= z = x
	| x <= y && x >= z = x
	| y >= x && y <= z = y
	| y <= x && y >= z = y
	| otherwise 	   = z



{- test data

*Main> median 1 3 2
2
*Main> median 1 2 3
2
*Main> median 1 3 2
2
*Main> median 2 1 3
2
*Main> median 2 3 1
2
*Main> median 3 1 2
2
*Main> median 3 2 1
2
*Main> median 1 2 2
2
*Main> median 2 2 2
2
*Main> median 3 3 1

-}


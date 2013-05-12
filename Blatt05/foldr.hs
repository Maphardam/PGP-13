--compare: induction without foldr
induction1 :: (Num a, Ord a) => b -> (a -> b -> b) -> a -> b
induction1 base comb n
 | n == 0 = base
 | n > 0 = comb n (induction1 base comb (n-1))

--induction with foldr
induction :: (Num a, Ord a, Enum a) => b -> (a -> b -> b) -> a -> b

induction base comb n = foldr comb base [n, n-1 .. 1]


--test data
--induction1 5 (*) 10 = 18144000
--induction 5 (*) 10 = 18144000

--induction1 3 (\x y -> (x+y)/2) 6 = 5.0625
--induction 3 (\x y -> (x+y)/2) 6 = 5.0625

occursIn :: Eq a => a -> [a] -> Bool

occursIn x xs = or [is | is<- [True, False], x `elem` xs]

allOccurIn :: Eq a => [a] -> [a] -> Bool

allOccurIn xs ys = and [x `elem` ys| x <- xs]

sameElements :: Eq a => [a] -> [a] -> Bool

sameElements xs ys = and [x `elem` ys| x <- xs] && and [y `elem` xs| y <- ys]
 
numOccurrences :: Eq a => a -> [a] -> Int

numOccurrences x xs = sum [1 | x' <- xs, x == x']

occursIn2 :: Eq a => a -> [a] -> Bool

occursIn2 x xs = not (null [e | e<- xs , e == x])

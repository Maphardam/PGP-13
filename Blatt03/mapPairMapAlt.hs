mapPair :: (Eq a)  => (a->a->a) -> [a] -> [a]

mapPair f [] = []
mapPair f (x:[]) = []
mapPair f (x:y:xs) = (f x y) : (mapPair f (y:xs))


mapAlt :: Eq a => (a->a) -> (a->a) -> [a] -> [a]

mapAlt f g [] = []
mapAlt f g (x:[]) = (f x) : []
mapAlt f g (x:y:xs) = (f x) : (g y) : (mapAlt f g xs)  

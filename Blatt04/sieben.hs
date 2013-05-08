delete :: Eq a => a -> [a] -> [a]
delete deleted xs = [ x | x <- xs, x /= deleted ]

deleteListFromList :: (Eq a) => [a] -> [a] -> [a]
deleteListFromList [] xs = xs
deleteListFromList _ [] = []
deleteListFromList (p:[]) xs = delete p xs
deleteListFromList (p:ps) xs = deleteListFromList ps (delete p xs) 


sieb :: (Eq a) => [a -> Bool] -> [a] -> [[a]]

sieb [] xs = [xs]
sieb [] [] = []
sieb (p:ps) [] = [] : (sieb ps [])

sieb (p:ps) xs = erstesSieb : (sieb ps (deleteListFromList erstesSieb xs))
                where erstesSieb = filter p xs
 

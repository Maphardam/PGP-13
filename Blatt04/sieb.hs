sieb :: [a -> Bool] -> [a] -> [[a]]

sieb fs xs = predListFilter : 

predListFilter :: [a-> Bool] -> [a] -> [[a]]

predListFilter fs xs = [filter f xs | f<-fs]

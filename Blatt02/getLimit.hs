getLimit :: [[Int]] -> Int -> [(Int,[Int])]

getLimit xxs a = [(sum x, x) | x <- xxs, sum x <= a]

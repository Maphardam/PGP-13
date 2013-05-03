genStat :: [[Int]] -> [(Int,Int,Int)]

genStat xxs = [(minimum xs, maximum xs, length xs) | xs <- xxs]

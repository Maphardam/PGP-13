--[ x+1 | x <- xs ]
f1 :: [Int] -> [Int]
f1 xs = map (1+) xs

-- [ x+y | x <- xs, y <-ys ]
f2 :: [Int] -> [Int] -> [Int]
f2 (x:[]) ys = map (+x) ys
f2 (x:xs) ys = map (+x) ys ++ f2 xs ys 

-- [ x+2 | x <- xs, x > 3 ]
f3 :: [Int] -> [Int]
f3 xs = map (2+) (filter(>3) xs)

-- [ x+3 | (x,_) <- xys ] --xys ist Liste von Tupeln
f4 :: [(Int,Int)] -> [Int]
f4 xys = map (\(x,_) -> x+3) xys 

-- [ x+4 | (x,y) <- xys, x+y < 5 ] --xys ist Liste von Tupeln
f5 :: [(Int,Int)] -> [Int]
f5 xys = map (\(x,_) -> x+4) (filter(\(a,b) -> a+b <5) xys)

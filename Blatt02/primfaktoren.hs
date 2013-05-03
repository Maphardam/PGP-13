primFaktoren :: Int -> [Int]

primFaktoren x = [if x `mod` p == 0 then p else p++| p <- 2 ] 

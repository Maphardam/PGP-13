maxThree :: Int ->  Int -> Int -> Int

maxThree x y z = if x >= y && x >= z then x 
			else if y >= x && y >= z then y 
			else z
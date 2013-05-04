fib3 :: Int -> Int

fib3 0 = 0
fib3 1 = 1
fib3 2 = 1

fib3 x = fib3 (x-1) + fib3 (x-2) + fib3 (x-3)

fib3Triple :: Int -> (Int, Int, Int)

fib3Triple n
	| n == 0	= (0,1,1)
	| otherwise	= fib3Step (fib3Triple (n-1))

fib3Step :: (Int, Int, Int) -> (Int, Int, Int)

fib3Step (u,v,x) = (v, x, u+v+x)

fst3 :: (Int,Int,Int) -> Int

fst3 (x,_,_) = x

fastFib3 :: Int -> Int

fastFib3 n = fst3(fib3Triple n)



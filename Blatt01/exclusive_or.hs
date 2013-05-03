--without pattern matching

xor :: Bool -> Bool -> Bool

xor a b
	| a && not b = True
	| b && not a = True
	| otherwise	= False

--with pattern matching

xor' :: Bool -> Bool -> Bool

xor' True False = True
xor' False True = True
xor' a b = False
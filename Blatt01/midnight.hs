mitternacht1 :: Float -> Float -> Float -> Float

mitternacht1 a b c = (- b + sqrt (b^2 - 4*a*c))/(2*a)

mitternacht2 :: Float -> Float -> Float -> Float

mitternacht2 a b c = (- b - sqrt (b^2 - 4*a*c))/(2*a)

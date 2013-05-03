distance :: (Float, Float) -> (Float, Float) -> Float

--Pythagoras

distance (u,v) (x,y) = 	sqrt ((u-x)^2 + (v-y)^2) 

circleArea :: Float -> Float

circleArea x = pi * x^2


{- test data
 - distance (4,1) (1,5)
 - 5.0
 - distance (14,4) (3,21)
 - 20.248457
 - circleArea 2
 - 12.566371
 - circleArea 31
 - 3019.0706 
 -}
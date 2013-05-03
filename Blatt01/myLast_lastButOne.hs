myLast :: [a] -> a

myLast (a:[]) = a
myLast (a:as) = myLast as

lastButOne :: [a] -> a

lastButOne (a:b:[]) = a
lastButOne (a:as) = lastButOne as 


{- test data
 - myLast [1,2,3]
 - 3
 - myLast ["hi","sab","sch"]
 - sch
 - lastButOne [1,2,3,4]
 - 3
 - lastButOne ["tim","sa","bs","ch"]
 - bs
 -}
-- Find the last element of a list

myLast :: [a] -> a
myLast = foldl1 (\_ x -> x)


myLast' :: [a] -> a
myLast' [x] = x
myLast' (_:xs) = myLast' xs
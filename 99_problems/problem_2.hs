-- find the second to last element in the list

secondToLast :: [a] -> a
secondToLast [x,y] = x 
secondToLast (x:xs) = secondToLast (xs)


secondToLast' x = reverse x !! 1
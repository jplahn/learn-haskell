-- find k'th element in list. First element in the list is at index 1

elementAt :: Int -> [b] -> b
elementAt x y = y !! (x - 1)


elementAt' :: Int -> [b] -> b
elementAt' 1 (y:_) = y
elementAt' x (_:ys)
	| x == 0 		= error "Out of bounds"
	| otherwise 	= elementAt' (x - 1) ys
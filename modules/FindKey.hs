-- returns value in dictionary
findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd. head . filter (\(k,v) -> key == k) $ xs


-- improved approach to handle key not in list
findKey' :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k, v):xs) = if key == k
							then Just v
						 	else findKey key xs



-- implemented with fold
findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key = foldr (\(k, v) acc -> if key == k then Just v else acc) Nothing
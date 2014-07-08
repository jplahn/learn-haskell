-- Reverse a list

reverseList :: [a] -> [a]
reverseList = foldl (\acc x -> x:acc) []


reverseList' :: [a] -> [a]
reverseList' = foldl (flip (:)) []
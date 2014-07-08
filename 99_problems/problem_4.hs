-- Find the length of a list

listLength :: [a] -> Int
listLength [] = 0
listLength [x] = 1
listLength (x:xs) = 1 + listLength xs


listLength' :: [a] -> Int
listLength' = foldl (\n _ -> n + 1) 0


listLength'' :: [a] -> Int
listLength'' = sum . map (\_ -> 1)
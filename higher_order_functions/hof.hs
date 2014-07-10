compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100


divideByTen :: (Floating a) => a -> a
divideByTen = (/10)


isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])


applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)


zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys


flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
	where g x y = f y x


largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999..])
	where p x = x `mod` 3829 == 0


chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n 
	| even n = n:chain (n `div` 2)
	| odd n = n:chain (n*3 + 1)


numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
	where isLong xs = length xs > 15


numLongChains' :: Int
numLongChains' = length (filter (\xs -> length xs > 15) (map chain [1..100]))


sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs


sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0


sum''' :: (Num a) => [a] -> a
sum''' xs = foldl (+) 0 xs


elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys


map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs


maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)


reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []


product' :: (Num a) => [a] -> a
product' = foldr1 (*)


filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []


head' :: [a] -> a
head' = foldr1 (\x _ -> x)


last' :: [a] -> a
last' = foldl1 (\_ x -> x)


sqrtSums :: Int
sqrtSums = length (takeWhile (< 1000) (scanl1 (+) (map srt [1..]))) + 1




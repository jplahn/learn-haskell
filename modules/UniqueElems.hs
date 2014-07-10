import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub


numUniques' :: (Eq a) => [a] -> Int
numUniques' = \xs -> length (nub xs)
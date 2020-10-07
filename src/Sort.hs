module Sort (mergeSort, insertSort, quickSort) where

import Data.List (foldl')

mergeSort :: (Ord a) => [a] -> [a]
mergeSort = mergeAll . map (: [])
  where
    mergeAll [] = []
    mergeAll [x] = x
    mergeAll xs = mergeAll $ mergePairs xs

    mergePairs (x : y : xs) = merge x y : mergePairs xs
    mergePairs xs = xs

merge :: Ord a => [a] -> [a] -> [a]
merge [] y = y
merge x [] = x
merge x@(x_ : xs) y@(y_ : ys)
  | x_ > y_ = y_ : merge x ys
  | otherwise = x_ : merge xs y

insertSort :: Ord a => [a] -> [a]
insertSort [] = []
insertSort [x] = [x]
insertSort (x : xs) = insert $ insertSort xs
  where
    insert [] = [x]
    insert (y : ys)
      | x < y = x : y : ys
      | otherwise = y : insert ys

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) = smallerSorted ++ [x] ++ biggerSoted
  where
    smallerSorted = quickSort [a | a <- xs, a <= x]
    biggerSoted = quickSort [a | a <- xs, a > x]
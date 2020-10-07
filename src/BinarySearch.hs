module BinarySearch
  ( binarySearch,
  )
where

-- | 二分查找
binarySearch :: Ord a => [a] -> a -> Int
binarySearch xs = binarySearch' xs 0 (length xs)

binarySearch' :: Ord a => [a] -> Int -> Int -> a -> Int
binarySearch' xs start end value
  | index_value < value = binarySearch' xs index end value
  | index_value > value = binarySearch' xs start index value
  | otherwise = index
  where
    index = div (start + end) 2
    index_value = xs !! index

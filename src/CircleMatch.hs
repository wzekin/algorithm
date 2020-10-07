module CircleMatch (circleMatch) where

circleMatch :: Int -> [[Int]]
circleMatch n = [[if i <= 0 then 0 else i | i <- j] | j <- match [1 .. n] 0]

match :: [Int] -> Int -> [[Int]]
match (x : y : []) _ = [[x, y], [y, x]]
match xs v
  | even $ length xs = merge (match l v') (match f v') v'
  | otherwise = tail $ merge (match (v : l) v') (match f v') v'
  where
    (l, f) = splitAt (length xs `div` 2) xs
    v' = v - 1

merge :: [[Int]] -> [[Int]] -> Int -> [[Int]]
merge l r v
  | even $ len = [xx ++ yy | (xx, yy) <- zip (l ++ r) (r ++ l)]
  | odd $ len = l' ++ r'
  where
    len = length l
    l' = [[if c == v then head $ r !! i else c | c <- a] ++ [head $ r !! ((j + i) `mod` len) | j <- [1 .. len - 1]] | (i, a) <- zip [0 ..] l]
    r' = [[if c == v then head $ l !! i else c | c <- a] ++ [head $ l !! ((j + i) `mod` len) | j <- reverse [1 .. len - 1]] | (i, a) <- zip [0 ..] r]
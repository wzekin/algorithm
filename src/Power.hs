module Power
  ( power,
  )
where

-- | 快速幂算法
power :: (Num a2, Integral a1) => a2 -> a1 -> a2
power a n
  | n == 0 = 1
  | even n = power (a * a) (div n 2)
  | otherwise = power (a * a) (div n 2) * a

module Lib
  ( rolls,
  )
where

import Data.List (unfoldr)
import Data.Time.Clock.POSIX (getPOSIXTime)
import System.IO.Unsafe (unsafePerformIO)
import System.Random (Random (randomR), mkStdGen)

time = round (unsafePerformIO getPOSIXTime) :: Int

rolls :: Int -> [Integer]
rolls n = take n (unfoldr (Just . randomR (-1000, 1000)) (mkStdGen n))

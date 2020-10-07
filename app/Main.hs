import CircleMatch (circleMatch)
import Criterion.Main (bench, bgroup, defaultMain, nf)
import Data.Sort (sort)
import Lib (rolls)
import Sort (insertSort, mergeSort, quickSort)

-- main :: IO ()
-- main =
--   defaultMain
--     [ bgroup
--         "insertSort"
--         [ bench "1000" $ nf insertSort (rolls 1000),
--           bench "10000" $ nf insertSort (rolls 10000)
--         ],
--       bgroup
--         "mergeSort"
--         [ bench "1000" $ nf mergeSort (rolls 1000),
--           bench "10000" $ nf mergeSort (rolls 10000),
--           bench "100000" $ nf mergeSort (rolls 100000)
--         ],
--       bgroup
--         "quickSort"
--         [ bench "1000" $ nf quickSort (rolls 1000),
--           bench "10000" $ nf quickSort (rolls 10000),
--           bench "100000" $ nf quickSort (rolls 100000)
--         ],
--       bgroup
--         "std sort"
--         [ bench "1000" $ nf sort (rolls 1000),
--           bench "10000" $ nf sort (rolls 10000),
--           bench "100000" $ nf sort (rolls 100000)
--         ]
--     ]

main :: IO ()
main = do
  let m = circleMatch 9
  print m
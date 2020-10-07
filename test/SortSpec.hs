module SortSpec where

import Data.Sort (sort)
import Lib (rolls)
import Sort (insertSort, mergeSort, quickSort)
import Test.Hspec

spec :: Spec
spec = do
  describe "quickSort" $ do
    it "it returns 1 if n == 0" $
      quickSort (rolls 10000) `shouldBe` sort (rolls 10000)

  describe "insertSort" $ do
    it "it returns 1 if n == 0" $
      insertSort (rolls 10000) `shouldBe` sort (rolls 10000)

  describe "mergeSort" $ do
    it "it returns 1 if n == 0" $
      mergeSort (rolls 10000) `shouldBe` sort (rolls 10000)

-- it "it returns a^n" $
--   power 2 10 `shouldBe` 1024

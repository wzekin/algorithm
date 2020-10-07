module CircleMatchSpec where

import CircleMatch (circleMatch)
import Test.Hspec

spec :: Spec
spec = do
  describe "circleMatch" $ do
    it "match 2 people" $
      circleMatch 2 `shouldBe` [[1, 2], [2, 1]]

    it "match 3 people" $
      circleMatch 3 `shouldBe` [[1, 0, 3, 2], [2, 3, 0, 1], [3, 2, 1, 0]]

    it "match 6 people" $
      circleMatch 6 `shouldBe` [[1, 4, 3, 2, 5, 6], [2, 3, 5, 1, 6, 4], [3, 2, 1, 6, 4, 5], [4, 1, 6, 5, 3, 2], [5, 6, 2, 4, 1, 3], [6, 5, 4, 3, 2, 1]]

    it "match 9 people" $
      circleMatch 9 `shouldBe` [[1,0,6,4,2,3,7,8,9,5],[2,7,4,3,1,0,8,9,5,6],[3,4,0,2,8,1,9,5,6,7],[4,3,2,1,0,9,5,6,7,8],[5,6,8,0,9,7,4,3,2,1],[6,5,1,9,7,8,0,4,3,2],[7,2,9,8,6,5,1,0,4,3],[8,9,5,7,3,6,2,1,0,4],[9,8,7,6,5,4,3,2,1,0]]
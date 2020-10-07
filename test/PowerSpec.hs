module PowerSpec where

import Power (power)
import Test.Hspec

spec :: Spec
spec = do
  describe "power" $ do
    it "it returns 1 if n == 0" $
      power 2 0 `shouldBe` 1

    it "it returns a^n" $
      power 2 10 `shouldBe` 1024

module Main where

import Test.Hspec
import Test.QuickCheck
import qualified Data.List as List
import Lib

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "partition" $ do
    describe "has the same behavior as List.partition" $ do
      it "> 3" . property $
        \xs -> equalProp (> 3) (xs :: [Int])
      it "< 3" . property $
        \xs -> equalProp (< 3) (xs :: [Int])

equalProp :: Eq a => (a -> Bool) -> [a] -> Bool
equalProp f xs = partition f xs == List.partition f xs

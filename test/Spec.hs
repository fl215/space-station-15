module Spec (main) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

import Data.Linear.V2

main :: IO ()
main = hspec $ do
  it "" $ do
    V2 25 25 / (V2 5 5) `shouldBe` (V2 5 5)

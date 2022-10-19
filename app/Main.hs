{-# LANGUAGE OverloadedLists #-}
module Main where

import qualified Data.List.NonEmpty as DL
import Control.Comonad

nel :: DL.NonEmpty String
nel = ["a", "b", "c"]

extended = duplicate nel

main :: IO ()
main = do
    print extended
    mapM_ print extended
    print (DL.length extended)

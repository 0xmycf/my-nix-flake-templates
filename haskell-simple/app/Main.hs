module Main where

import Test.QuickCheck

main :: IO ()
main = do 
  quickCheck \x -> coolio x == x

coolio :: String -> String
coolio (a:as) = a : coolio as 
coolio []     = ['1']

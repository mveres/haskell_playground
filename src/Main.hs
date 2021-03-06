-- | Main entry point to the application.
module Main where

import Parsing

-- | The main entry point.
main :: IO ()
main = do
    print $ parse item "hello"
    print $ parse (return 1 +++ return 2) "123"
    print $ parse (return 1) "hello"
    print $ parse (item +++ return 'a') "hello"
    print $ parse int "-007"
    print $ parse comment "-- 007"
    print $ parse expr "4-1-10"
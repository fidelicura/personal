{-
Given a year, report if it is a leap year.
Leap means:
on every year that is evenly divisible by 4
except every year that is evenly divisible by 100
unless the year is also evenly divisible by 400

https://exercism.org/tracks/haskell/exercises/leap
-}

module Leap where

isLeap :: Integer -> Bool
isLeap date
  | rem date 400 == 0 = True
  | rem date 100 == 0 = False
  | rem date 4 == 0 = True
  | otherwise = False

main :: IO ()
main = do
  putStrLn "Hey. Waiting for your input below..."
  userInput <- getLine
  let year = read userInput :: Integer
  print (isLeap year)
  return ()

{-
Given a number determine whether or not it is valid per the Luhn formula.
The Luhn algorithm is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers and Canadian Social Insurance Numbers.
The task is to check if a given string is valid.

https://exercism.org/tracks/haskell/exercises/luhn
-}

module Luhn where

-- FIXME: function looks too imperative
luhnAlgorithm :: [Integer] -> [Integer]
luhnAlgorithm x = [first, x !! 1, third, x !! 2]
  where
    rawFirst = head x * rawFirst
    rawThird = x !! 2 * rawThird
    first = if rawFirst > 9 then rawFirst - 9 else rawFirst
    third = if rawThird > 9 then rawThird - 9 else rawThird

parseStringAsIntegerList :: String -> [Integer]
parseStringAsIntegerList str = map (read . (:"")) str :: [Integer]

main :: IO ()
main = do
    putStrLn "Hey. Waiting for your input below..."
    userInput <- getLine
    let userInputProcessed = map parseStringAsIntegerList (words userInput)
    let luhnProcessed = sum (map sum . luhnAlgorithm userInputProcessed)

    if mod luhnProcessed 10 == 0
    then print True
    else print False

    return ()

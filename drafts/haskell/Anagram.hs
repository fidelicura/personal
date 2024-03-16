{-
Given a target word and a set of candidate words, this exercise requests the anagram set: the subset of the candidates that are anagrams of the target.

The target and candidates are words of one or more ASCII alphabetic characters (A-Z and a-z). Lowercase and uppercase characters are equivalent: for example, "PoTS" is an anagram of "sTOp", but StoP is not an anagram of sTOp. The anagram set is the subset of the candidate set that are anagrams of the target (in any order). Words in the anagram set should have the same letter case as in the candidate set.

Given the target "stone" and candidates "stone", "tones", "banana", "tons", "notes", "Seton", the anagram set is "tones", "notes", "Seton".

https://exercism.org/tracks/haskell/exercises/anagram
-}

module Anagram where

import Data.HashSet (fromList)
import Data.Char (toLower)

toLowerListString :: [String] -> [String]
toLowerListString = map (map toLower)

isAnagram :: String -> String -> Bool
isAnagram target candidate = hashedTarget == hashedCandidate && lowerCasedTarget /= lowerCasedCandidate
  where
    lowerCasedTarget = map toLower target 
    lowerCasedCandidate = map toLower candidate
    hashedTarget = fromList lowerCasedTarget
    hashedCandidate = fromList lowerCasedCandidate

findAnagrams :: String -> [String] -> [String]
findAnagrams target = filter (isAnagram target)

main :: IO ()
main = do
  putStrLn "Hey. Waiting for your input below..."
  target <- getLine
  userCandidates <- getLine
  let candidates = words userCandidates
  putStrLn (unwords (findAnagrams target candidates))
  return ()

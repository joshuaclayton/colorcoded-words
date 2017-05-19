{-# LANGUAGE TupleSections #-}

module Main where

import qualified Control.Monad as M
import           Data.Maybe (mapMaybe)

main :: IO ()
main = putStrLn =<< run filterResults

run :: ([String] -> [String]) -> IO String
run filter' = unlines . filter' . lines <$> getContents

filterResults :: [String] -> [String]
filterResults = mapMaybe (fmap buildResult . swapString) . filterPossibleColorStrings

buildResult :: (String, String) -> String
buildResult (a, b) = a ++ " - " ++ b

swapString :: String -> Maybe (String, String)
swapString s = (s,) <$> M.mapM replacements s

filterPossibleColorStrings :: [String] -> [String]
filterPossibleColorStrings = filter ((6 ==) . length)

replacements :: Char -> Maybe Char
replacements '1' = Just '1'
replacements '2' = Just '2'
replacements '3' = Just '3'
replacements '4' = Just '4'
replacements '5' = Just '5'
replacements '6' = Just '6'
replacements '7' = Just '7'
replacements '8' = Just '8'
replacements '9' = Just '9'
replacements '0' = Just '0'
replacements 'a' = Just 'a'
replacements 'b' = Just 'b'
replacements 'c' = Just 'c'
replacements 'd' = Just 'd'
replacements 'e' = Just 'e'
replacements 'f' = Just 'f'
replacements 'g' = Nothing
replacements 'h' = Nothing
replacements 'i' = Just '1'
replacements 'j' = Nothing
replacements 'k' = Nothing
replacements 'l' = Just '1'
replacements 'm' = Nothing
replacements 'n' = Nothing
replacements 'o' = Just '0'
replacements 'p' = Nothing
replacements 'q' = Just '9'
replacements 'r' = Nothing
replacements 's' = Just '5'
replacements 't' = Just '7'
replacements 'u' = Nothing
replacements 'v' = Nothing
replacements 'w' = Nothing
replacements 'x' = Nothing
replacements 'y' = Nothing
replacements 'z' = Just '2'
replacements _ = Nothing

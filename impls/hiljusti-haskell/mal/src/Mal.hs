module Mal
    ( repl
    ) where

import Control.Monad (unless)
import System.IO (hFlush, isEOF, stdout)

import Reader

repl :: IO ()
repl =
  prompt >>
    isEOF >>= \eof ->
       unless eof $
         getLine >>= \line ->
           putStrLn (Mal.print . Mal.eval . Mal.read $ line) >>
             repl

prompt :: IO ()
prompt = putStr "user> " >> hFlush stdout

read :: String -> String
read s = s

eval :: String -> String
eval s = s

print :: String -> String
print s = s


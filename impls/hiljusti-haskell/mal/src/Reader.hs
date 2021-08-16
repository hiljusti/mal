module Reader
    ( readStr
    , tokenize
    ) where

import Text.Regex.PCRE

data Atom = Sym Char | MalInt Int | Atom deriving (Read, Show)
type Expr = [Atom]

tokenRegex :: Regex
tokenRegex = makeRegex "[\\s,]*(~@|[\\[\\]{}()'`~^@]|\"(?:\\.|[^\\\"])*\"?|;.*|[^\\s\\[\\]{}('\"`,;)]*)"

readStr :: String -> Expr
readStr "0" = [MalInt 0]
readStr _ = undefined

tokenize :: ()
tokenize = ()


module Reader
    ( readStr
    , tokenize
    ) where

import Text.Regex.PCRE

data Atom = Sym Char | MalInt Int | Atom
data Expr = List Atom

tokenRegex :: Regex
tokenRegex = makeRegex "[\\s,]*(~@|[\\[\\]{}()'`~^@]|\"(?:\\.|[^\\\"])*\"?|;.*|[^\\s\\[\\]{}('\"`,;)]*)"

readStr :: ()
readStr = ()

tokenize :: ()
tokenize = ()


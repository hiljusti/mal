module Reader
    ( readStr
    , tokenize
    ) where

import Text.Regex.PCRE

tokenRegex :: Regex
tokenRegex = makeRegex "[\\s,]*(~@|[\\[\\]{}()'`~^@]|\"(?:\\.|[^\\\"])*\"?|;.*|[^\\s\\[\\]{}('\"`,;)]*)"

readStr :: ()
readStr = ()

tokenize :: ()
tokenize = ()


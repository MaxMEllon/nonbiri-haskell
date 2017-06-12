import Data.Char

isEvenOfCharCode :: Char -> Bool
isEvenOfCharCode c = (even . ord) c

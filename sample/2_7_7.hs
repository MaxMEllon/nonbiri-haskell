import Data.Char

toLowerOrd' :: Char -> Int
toLowerOrd' c = (ord . toLower) c

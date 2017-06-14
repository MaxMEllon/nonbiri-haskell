import Data.List

-- 型シノニム
-- type Hoge = [String]

plural arr
    | arr == [] = True
    | otherwise = (head arr) == (last arr)

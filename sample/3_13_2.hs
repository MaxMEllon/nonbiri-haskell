sumN :: Integer -> Integer
sumN n
    | n == 0    = 0
    | otherwise = sumN(n - 1) + n

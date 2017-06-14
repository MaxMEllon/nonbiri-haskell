productOdd3 :: Integer -> Integer
productOdd3 n = product . map (* 3) $ filter (odd) [0 .. n]


myMaximum :: [Integer] -> Integer
myMaximum (d:d':dataList)
    | dataList == [] = max d d'
    | otherwise      = myMaximum (dataList ++ [(max d d')])

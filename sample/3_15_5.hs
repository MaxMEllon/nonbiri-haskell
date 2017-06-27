
type Mydata = (Integer, Bool)

calc :: [Mydata] -> Integer
calc (d:datas)
    | flag == True  = (*) (fst d) (calc datas)
    | flag == False = (+) (fst d) (calc datas)
    | empty == True = 0
    | otherwise = 0
    where
          flag = snd d
          empty = datas == []

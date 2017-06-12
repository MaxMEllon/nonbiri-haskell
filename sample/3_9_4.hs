uncarry :: Int -> Float -> Float
uncarry price rate = (rate * (fromIntegral price)) + (fromIntegral price)

calc :: (Int, Float) -> Float
calc (price, rate) = (uncarry price rate)

info :: (Int, Float)
info = (1000, 0.05)

calcExec = calc $ info

congruent :: Int -> Int -> Int -> Bool
congruent a b c = b `mod` a == c `mod` a

uncarry3 f (a, b, c) = (f a b c)

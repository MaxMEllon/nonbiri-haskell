import Data.List

-- foldr :: (a -> b -> a) -> b -> [a] -> a <- 返却値
--          ~~~~~~~~~~~~     |     L 配列
--             演算子        末尾の左辺

-- unfoldr :: (b -> Maybe (a, b)) -> b -> [a] <- 返却値
--            ~~~~~~~~~~~~~~~~~~~    L 最初の引数
--             |           |  L 次の処理の引数
--            関数         L この処理の配列の要素

solve :: Integer -> [Integer]
solve n
  | n == 0 = []
  | otherwise =  n `mod` 10 : solve (n `div` 10)

solve' = unfoldr (\x -> if x == 0 then Nothing else Just (x `mod` 10, x `div` 10))

power x n
    | n == 0    = 1
    | even n    = power (x*x) (n `div` 2)
    | otherwise = x * power x (n - 1)

up a b
  | a == 0 && b == 0 = 0
  | otherwise = b * 10 + a

rsolve arr = foldr up 0 arr

main = do
    n <- readLn :: IO Int
    putStrLn $ show $ solve' $ toInteger n

import Data.List

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

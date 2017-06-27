import Data.List

solve :: Integer -> [Integer]
solve n
  | n == 0 = []
  | otherwise =  n `mod` 10 : solve (n `div` 10)

solve' = unfoldr (\x -> if x == 0 then Nothing else Just (x `mod` 10, x `div` 10))

main = do
    n <- readLn :: IO Int
    putStrLn $ show $ solve' $ toInteger n

import Data.Char

-- 学んだこと
--  .  という関数を使えば関数合成ができる．
--
--  (funcA . funcB) v は
--
--  funcA (funcB v) と同じ

toLowerOrd' :: Char -> Int
toLowerOrd' c = (ord . toower) c

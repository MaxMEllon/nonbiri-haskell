data KinokoTakenoko = Kinoko | Takenoko deriving Eq
type Human = (String, KinokoTakenoko)

info :: Human -> String
info i
  | t == Kinoko   = n ++ "(A)"
  | t == Takenoko = n ++ "(T)"
  where
      n = fst i
      t = snd i

data Day = Sun | Mon | Tue | Wed | Thu | Fri | Sat deriving Eq

work_or_play :: Day -> String
work_or_play d
    | d == Sat = "play"
    | otherwise = "work"

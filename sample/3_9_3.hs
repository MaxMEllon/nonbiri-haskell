info :: (Int, Bool)
info = (4, True)

age (a, f)
    | f == True = print $ a
    | f == False = print $ "hidden"

main =
    age(info)

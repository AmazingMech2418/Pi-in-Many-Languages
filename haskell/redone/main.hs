pi_ iters = pi' 2 1 3 0 where
    pi' a s p n
        | n == iters = p
        | otherwise = pi' (a + 2)
                          (-s)
                          (p + s * (4 / (a * (a * (a + 3) + 2))))
                          (n + 1)

main = do
    putStrLn $ "pi = " ++ (show $ pi_ 150000)

separateSigns :: [Int] -> ([Int],[Int])
separateSigns xs = (ys,zs)
            where
                ys = [y | y <- xs, y < 0]
                zs = [z | z <- xs, z > 0]
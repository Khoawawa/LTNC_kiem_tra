pairsWithSum:: Int -> [Int] -> [(Int,Int)]
pairsWithSum total xs = recur total xs []
                where
                    recur _ [] acc = acc
                    recur total (x:xs) acc = recur total xs (acc ++ [(x,y) | y <- xs, x + y == total])
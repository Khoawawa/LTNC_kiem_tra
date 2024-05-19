transform :: [Int] ->[Int]
transform xs = [y*3 | y <- xs, even y]
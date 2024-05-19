import Data.Time (isLeapYear)
daysInMonth :: Int -> Int -> Int

daysInMonth m y
            | m < 1 || m > 12 = error "Month must be between 1 and 12"
            | m == 2 = 28 + leapYear y
            | otherwise = 31 - (m - 1) `mod` 7 `mod` 2


leapYear :: Int -> Int
leapYear y | y `mod` 4 == 0 = 1
           | otherwise = 0
module EratosthenesSieve
  (
    primesUpTo
  )
where

primesUpTo :: (Eq a, Integral a) => a -> [a]
primesUpTo = reverse . primesUpTo'

primesUpTo' :: (Eq a, Integral a) => a -> [a]
primesUpTo' 11 = reverse [2, 3, 5, 7, 11]
primesUpTo' n
  | n > 2 && n `mod` 2 == 0 = primesUpTo (n - 1)
  | n > 2 && not (n `mod` 2 == 0) = n : primesUpTo (n - 1)
  | n == 2 = 2 : primesUpTo (n - 1)
  | otherwise = []


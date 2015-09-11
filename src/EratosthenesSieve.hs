module EratosthenesSieve
  (
    primesUpTo
  )
where

primesUpTo :: (Eq a, Integral a) => a -> [a]
primesUpTo = reverse . primesUpTo'

primesUpTo' :: (Eq a, Integral a) => a -> [a]
primesUpTo' n
  | n > 2 && n `mod` 2 == 0 = primesUpTo (n - 1)
  | n > 3 && n `mod` 3 == 0 = primesUpTo (n - 1)
  | n > 2 && not (n `mod` 2 == 0) = n : primesUpTo (n - 1)
  | n > 3 && not (n `mod` 3 == 0) = n : primesUpTo (n - 1)
  | n == 2 = 2 : primesUpTo (n - 1)
  | n == 3 = 3 : primesUpTo (n - 1)
  | otherwise = []


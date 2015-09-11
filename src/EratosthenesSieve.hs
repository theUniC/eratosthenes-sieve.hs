module EratosthenesSieve
  (
    primesUpTo
  )
where

primesUpTo :: (Eq a, Integral a) => a -> [a]
primesUpTo = primesUpTo'

primesUpTo' :: (Eq a, Integral a) => a -> [a]
-- primesUpTo' n
--   | n > 2 && n `mod` 2 == 0 = primesUpTo (n - 1)
--   | n > 3 && n `mod` 3 == 0 = primesUpTo (n - 1)
--   | n > 2 && not (n `mod` 2 == 0) = n : primesUpTo (n - 1)
--   | n > 3 && not (n `mod` 3 == 0) = n : primesUpTo (n - 1)
--   | n == 2 = 2 : primesUpTo (n - 1)
--   | n == 3 = 3 : primesUpTo (n - 1)
--   | otherwise = []
primesUpTo' n = sieve 3 $ sieve 2 [2 .. n]

sieve :: (Eq a, Integral a) => a -> [a] -> [a]
sieve _ [] = []
sieve p (x:xs)
  | not (x == p) && x `mod` p == 0 = sieve p xs
  | otherwise = x : sieve p xs

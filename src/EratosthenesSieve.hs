module EratosthenesSieve
  (
    primesUpTo
  )
where

primesUpTo :: (Eq a, Integral a) => a -> [a]
primesUpTo n = sieve 3 $ sieve 2 [2 .. n]

sieve :: (Eq a, Integral a) => a -> [a] -> [a]
sieve _ [] = []
sieve p (x:xs)
  | not (x == p) && x `mod` p == 0 = sieve p xs
  | otherwise = x : sieve p xs

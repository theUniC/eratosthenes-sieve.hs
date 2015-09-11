module EratosthenesSieve
  (
    primesUpTo
  )
where

primesUpTo :: (Eq a, Integral a) => a -> [a]
primesUpTo n = sieve [2 .. n]
  where
    sieve (x:xs) = x : sieve [p | p <- xs, p `mod` x > 0]
    sieve []     = []


module EratosthenesSieve
  (
    primesUpTo
  )
where

import Control.Monad (guard)

primesUpTo :: Integer -> [Integer]
primesUpTo n = sieve [2 .. n]
  where
    sieve []     = []
    sieve (x:xs) = x : sieve (xs >>= \p -> guard (p `mod` x > 0) >> return p)
    -- with syntactic sugar
    -- sieve (x:xs) = x : (sieve $ do
    --  p <- xs
    --  guard (p `mod` x > 0)
    --  return p)

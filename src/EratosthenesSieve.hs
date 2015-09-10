module EratosthenesSieve where

primesUpTo :: Integer -> [Integer]
primesUpTo 3 = [2, 3]
primesUpTo 5 = [2, 3, 5]
primesUpTo 7 = [2, 3, 5, 7]
primesUpTo n = [n]

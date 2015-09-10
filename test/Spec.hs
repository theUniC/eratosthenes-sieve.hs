import Test.Hspec
import EratosthenesSieve

main :: IO ()
main = hspec $ do
  describe "The sieve of Eratosthenes" $ do
    it "should return a list with all the prime numbers up to a given number" $ do
      primesUpTo 2 `shouldBe` [2]
      primesUpTo 3 `shouldBe` [2, 3]

import Control.Monad
import Control.Applicative
import Data.List

-- 約数
factors :: Integer -> [Integer]
factors n = [x | x <- [1 .. n], n `mod` x == 0]

-- 素因数分解
factorization :: Integer -> [Integer]
factorization 1 = []
factorization x = v : factorization(x `div` v)
  where
    v = (factors x) !! 1

main = do
  let a = 600851475143
  print $ maximum $ factorization a

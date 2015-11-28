import Data.Set
import Data.Maybe

seive :: Integer -> Set Integer -> Set Integer
seive p xs
  | p*p > findMax xs = xs
  | otherwise        = seive nextP (xs \\ mults)
    where mults = fromAscList [p*p, (p+1)*p .. findMax xs]
          nextP = fromJust $ lookupGT p xs
primes :: Integer -> [Integer]
primes m = toList $ seive 2 $ fromAscList [2..m]

main = do
  let n = 1000000
  print $ primes n !! 10000

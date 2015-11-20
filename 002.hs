import Control.Monad
import Control.Applicative
import Data.List
import Data.Array
import Data.Function.Memoize

memo :: Integer -> Integer
memo = memoize fib

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = memo (n - 2) + memo (n - 1)

main = do
  a <- forM [1..100] $ \i -> do
    return $ if even (memo i) && (memo i) < 4000000 then (memo i) else 0
  putStrLn $ show $ sum a


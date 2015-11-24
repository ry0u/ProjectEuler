import Control.Monad
import Control.Applicative
import Data.List

-- 素因数分解
func :: Integer -> [Integer]
func n = 
  [1 .. n]
main = do
  let a = 10
  putStrLn $ show $ func a

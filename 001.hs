import Control.Monad
import Control.Applicative
import Data.List

main = do
  let n = 1000
      a = [3, 3 * 2 .. n]
      b = [5, 5 * 2 .. n]
      c = union a b

  -- putStrLn $ show a
  -- putStrLn $ show b
  -- putStrLn $ show c
  putStrLn $ show $ sum c


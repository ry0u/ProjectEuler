func :: [Integer] -> Integer
func [] = 0
func (x : xs) = x*x + func xs

main = do
  let a = [1 .. 100]
  let b = (*) (sum a) (sum a)
  print $ (-) b (func a)

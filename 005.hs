func [] = 1
func (x : xs) = lcm x $ func xs

main = do
  let a = [1 .. 20]
  print $ func a

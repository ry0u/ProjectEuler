main = do
  let a = [100 .. 999]
  let b = [n * m | n <- a, m <- a]
  let c = [x | x<-b, show x == reverse(show x)]
  print $ maximum  c
  

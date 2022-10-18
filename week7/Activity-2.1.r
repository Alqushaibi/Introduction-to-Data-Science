v <- c("Hello","loop")
cnt <- 1
repeat {
  print(v)
  cnt <- cnt+1
  if(cnt > 10) {
    break
  }
}

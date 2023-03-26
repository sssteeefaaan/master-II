v <- sample(1:100, 50, T)
v

i <- 1
solution1 <- c()
while(i <= length(v)){
  if(v[i] == max(v))
    solution1 <- c(solution1, i)
  i <- i + 1
}
solution1

solution2 <- (1:length(v))[v==max(v)]
solution2

solution3 <- which(v == max(v))
solution3

v <- sample(1:100, 50, T)
v

as1 <- mean(v)
as1

as2 <- 0
for(i in 1:length(v)){
  as2 <- as2 + v[i]
}
as2 <- as2 / length(v)
as2

as3 <- sum(v)/length(v)
as3

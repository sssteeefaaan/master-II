v <- sample(1:100, 15, T)
v

i <- v %% 3 == 0
i

deljivi <- v[i]
deljivi

sum(i)
sum(!i)

sum(length(deljivi))
sum(length(v)-length(deljivi))

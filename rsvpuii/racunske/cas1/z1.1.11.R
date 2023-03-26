v <- sample(1:100, 50, T)
v

parnePozicije <- v %% 2 == 0
vnovi <- c()

vnovi[parnePozicije] <- v[parnePozicije]
vnovi[!parnePozicije] <- 2 * v[!parnePozicije]

vnovi

vnovi2 <- sapply(v, function(x){ if(x %% 2 == 0) x else 2 * x })
vnovi2

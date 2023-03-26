v <- sample(1:100, 50, T)
v

f <- function(v){
  v[seq(1, length(v), 2)]
}

f(v)

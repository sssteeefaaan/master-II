v <- sample(1:100, 50, T)
v

saberi <- function(vektor){
  vektor[1] + if(length(vektor) > 1)
    saberi(vektor[2:length(vektor)])
  else
    0
}

hahaah <- saberi(v)
hahaah

sum(v)

raspodela <- function(vektor){
  parnePozicije = vektor %% 2 == 0
  list(parni=vektor[parnePozicije], neparni=vektor[!parnePozicije])
}

v <- sample(1:100, 50, T)
v

raspodela(v)

v <- sample(1:100, 50, T)
v

pozicijeParnih <- v %% 2 == 0
pozicijeParnih

parni <- v[pozicijeParnih]
parni

neparni <- v[!pozicijeParnih]
neparni

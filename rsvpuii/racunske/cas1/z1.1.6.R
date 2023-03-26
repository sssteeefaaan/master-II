v1 <- sample(1:100, 50, T)
v1

v2 <- sample(1:100, 50, T)
v2

# veciV1 <- v1 > v2
# veciV2 <- v2 > v1
# 
# kolikoImaVecihV1 <- sum(veciV1)
# kolikoImaVecihV2 <- sum(veciV2)
# 
# if(kolikoImaVecihV1 > kolikoImaVecihV2){
#   print("Prvi")
# }else if(kolikoImaVecihV2 > kolikoImaVecihV1){
#   print("Drugi")
# }else{
#   print("Isti su!")
# }

switch(sign(sum(v1 > v2) - sum(v2 > v1)) + 2, "Prvi", "Jednaki su", "Drugi")
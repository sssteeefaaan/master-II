set.seed(1)

va <- c(1, 2, 3, 4, 5, 1, 2, 3, 4, 5)
va


vb <- rep(1:5, 2)
vb


vc <- rep(1:5, each=2)
vc


vd <- seq(1, 5, length.out=10)
vd


ve <- round(seq(1, 5, length.out=10))
ve


ve2 <- floor(seq(1, 5, length.out=10))
ve2


ve3 <- ceiling(seq(1, 5, length.out=10))
ve3


vf <- sample(1:5, 10, replace=TRUE)
vf


vg <- runif(10, 1, 5)
vg


vg1 <- dunif(10, 1, 5)
vg1


vg2 <- qunif(10, 1, 5)
vg2


vg3 <- punif(10, 1, 5)
vg3


vh <- round(runif(10, 1, 5))
vh


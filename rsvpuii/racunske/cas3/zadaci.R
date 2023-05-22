podaci_lokacija <- "../podaci"

# 1.3.1.
natalitet <- read.csv(paste0(podaci_lokacija, "/NCHS_-_Birth_Rates_for_Females_by_Age_Group__United_States.csv"))
natalitet

# 1.3.2.
dimenzije <- sprintf("%d x %d", nrow(natalitet), ncol(natalitet))
dimenzije

dimenzijev2 <- dim(natalitet)
dimenzijev2

# 1.3.3.
head(natalitet, 10)
tail(natalitet, 10)

# 1.3.4.

natalitetv2 <- natalitet

# -----------------------

natalitetv2$Age.Group <- mapply(function(v) sprintf("godina %s", substr(v, 0, 5)), natalitetv2$Age.Group)
natalitetv2

# -----------------------
natalitetv2$Age.Group <- sprintf("godina %s", substr(natalitet$Age.Group, 0, 5))
natalitetv2

# -----------------------
natalitetv2$Age.Group <- sprintf("godina %s", gsub(" Years", "", natalitetv2$Age.Group))
natalitetv2

# 1.3.5.
natalitet.max <- natalitet[natalitet$Birth.Rate == max(natalitet$Birth.Rate),]
natalitet.max

natalitet.min <- natalitet[natalitet$Age.Group == natalitet.max$Age.Group,]
natalitet.min <- natalitet.min$Birth.Rate == min(natalitet.min$Birth.Rate),]
natalitet.min

# 1.3.6.
starosna.kategorija <- natalitet[grepl("25-29", natalitet$Age.Group, ignore.case = TRUE),]
head(starosna.kategorija)
stopa.nataliteta.za.period.2012.2018 <- starosna.kategorija[starosna.kategorija$Year <= 2018 & starosna.kategorija$Year >= 2012, c("Birth.Rate", "Year")]
head(stopa.nataliteta.za.period.2012.2018)

# 1.3.7.
starosna.kategorija <- natalitet[grepl("30-34", natalitet$Age.Group, ignore.case = TRUE),]
prosecna.vrednost.stope.nataliteta <- mean(starosna.kategorija$Birth.Rate)
prosecna.vrednost.stope.nataliteta

# 1.3.8.
prosecna.vrednost.stope.nataliteta <- aggregate(natalitet$Birth.Rate, by=list(natalitet$Age.Group), mean)
names(prosecna.vrednost.stope.nataliteta) <- c("Starosna grupa", "Prosecna stopa nataliteta")
prosecna.vrednost.stope.nataliteta

# ------------------------------

prosecna.vrednost.stope.nataliteta <- aggregate(Birth.Rate ~ Age.Group, data=natalitet, mean)
prosecna.vrednost.stope.nataliteta

# 1.3.9.
natalitet$Decade <- natalitet$Year %/% 10
najmanja.stopa.nataliteta <- aggregate(Birth.Rate ~ Decade + Age.Group, data=natalitet, min)

# 1.3.10.
natalitet$Age.Group <- substr(natalitet$Age.Group, 0, 5)
natalitet$Age.Group
colnames(natalitet) <- c("Godina", "Starosna kategorija", "Stopa nataliteta", "Decenija")
natalitet

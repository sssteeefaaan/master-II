liga <- data.frame(
  klub=c("Mladost", "Sloga", "Jedinstvo", "Sloboda"),
  pobeda=c(1, 0, 2, 2),
  remi=c(2, 0, 1, 0),
  poraz=c(0, 3, 0, 1),
  datiGolovi=c(6, 4, 9, 7),
  primljeniGolovi=c(5, 9, 7, 5)
)
liga

liga$bod <- liga$pobeda * 3 + liga$remi
liga

drugiNajbolji <- sort(liga$bod, decreasing = T)[2]
drugiNajbolji

liga$oznaka <- ifelse(liga$bod >= drugiNajbolji, "da", "ne")
liga

liga.da <- liga[liga$oznaka == "da", colnames(liga) != "oznaka"]
liga.ne <- liga[liga$oznaka == "ne", colnames(liga) != "oznaka"]

liga.da
liga.ne

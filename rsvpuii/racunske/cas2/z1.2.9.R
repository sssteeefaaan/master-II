liga <- data.frame(
  klub=c("Mladost", "Sloga", "Jedinstvo", "Sloboda"),
  pobeda=c(1, 0, 2, 1),
  remi=c(2, 0, 1, 1),
  poraz=c(0, 3, 0, 1),
  datiGolovi=c(6, 4, 9, 7),
  primljeniGolovi=c(5, 9, 7, 5)
)
liga

liga$bod <- liga$pobeda * 3 + liga$remi
liga

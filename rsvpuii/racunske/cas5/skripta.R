# z1.5.1
library(dplyr)
library(ggplot2)
library(readxl)

setwd("/home/stefan/master-II/rsvpuii/racunske/podaci")

put <- read_excel('./TDS_2015_Data-WEBPAGE.xlsx', sheet="Data")

head(put)
str(put)

# z1.5.2
put %>%
  nrow()

put %>%
  filter(Q2==9) %>%
  count()

# z1.5.3
put %>%
  filter(Q2 == 8) %>%
  filter(Trips >= 15) %>%
  nrow()

# z1.5.4
put2 <- put %>%
  select(-7:-144) %>%
  ncol()
put2

# z1.5.5
put %>%
  filter(Q3 == 1) %>%
  arrange(Trips)

# z1.5.7
put <- put %>% mutate(LANG_CAT = factor(ifelse(LANG == 1, "English", "Non-English")))

put %>%
  group_by(LANG_CAT) %>%
  count()

# z1.5.8
put <- put %>%
  mutate(GENDER=recode_factor(Q31, "Male", "Female", "Uncertain"))
put$GENDER

# z1.5.9
put %>%
  ggplot() +
  geom_boxplot(mapping=aes(x=factor(Q2), y=Trips)) +
  labs(title="Box plots for total trips by county", x="County", y="Trips") +
  theme_light()

# z1.5.10
put %>%
  ggplot() +
  geom_bar(mapping = aes(x=GENDER, fill=factor(Q2)), width=0.5) +
  labs(title="Broj ucensika po polu", x="Pol", y="Broj ucesnika")

# z1.5.11

# z1.5.12

# z1.5.13
put %>%
  ggplot() +
  geom_histogram(mapping=aes(x = Trips)) +
  facet_wrap(vars(GENDER))

put %>%
  ggplot() +
  geom_histogram(mapping=aes(x = Trips, fill=GENDER), position="identity", alpha=0.5)



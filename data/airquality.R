library(tidyverse)
library(ggplot2)

data()
data(airquality)
head(airquality)
tail(airquality)
dim(airquality)
??airquaity
summary(airquality)
quantile(airquality) #c(.2, .4, .8))

# number of NA per column
colSums(is.na(airquality))
airquality %>% 
  dplyr::summarise(across(everything(), ~ sum(is.na(.x))))
map(airquality, ~sum(is.na(.)))
sapply(X = df, FUN = function(x) sum(is.na(x)))
apply(is.na(airquality), 2, sum)

df <- airquality %>% drop_na()
dim(df)

# tidy
tidy <- pivot_longer(data=df, cols=everything(), names_to = "Variable")
head(tidy)
dim(tidy)

# control order
arranged <- tidy %>% arrange(value) 
unique(tidier$Variable)
tidier <- arranged %>%
  mutate(Variable=factor(Variable, levels=c("Day", "Ozone", "Wind", "Month", "Solar.R", "Temp")))%>%
  filter(!Day) %>%
  filter(!Month)
head(tidier)
dim(tidier)

# violin plot
violin <- ggplot(data = tidy, aes(x=Variable, y=value, fill=Variable)) +
  geom_violin(width=1.5) 
  #coord_flip() +
violin






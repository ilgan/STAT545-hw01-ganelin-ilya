library(tidyverse)
library(gapminder)

gapminder
head(gapminder)
tail(gapminder)
str(gapminder)
summary(gapminder)
glimpse(gapminder)

plot(lifeExp ~ year, gapminder)
plot(lifeExp ~ gdpPercap, gapminder)

list()
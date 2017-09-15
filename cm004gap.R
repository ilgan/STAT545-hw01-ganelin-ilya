library(tidyverse)
library(gapminder)

gap_gdpPercap <- gapminder %>% 
  group_by(continent, year) %>% 
  summarise(cont_gdpPercap = sum(gdpPercap)) %>% 
  ungroup

str(gap_gdpPercap)

gapminder %>% 
  left_join(gdpPercap) %>% 
  mutate(cont_gdpPercap_share = gdpPercap / cont_gdpPercap) %>% 
  ggplot( aes(x=year, 
              y=cont_gdpPercap_share, 
              group=country, 
              colour=continent)) + 
  geom_line() + 
  facet_wrap(~continent )
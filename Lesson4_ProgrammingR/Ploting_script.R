installed.packages("ggplot2")

library(ggplot2)

gapminder <- read.table("gapminder.txt", header = TRUE)

head(gapminder)

ggplot(data = gapminder, aes(x=gdpPercap, y=lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + geom_line(aes(color="blue")) + geom_point()


ggplot(data = gapminder, aes(x=gdpPercap, y=lifeExp)) + geom_point(alpha = 0.5) + 
  scale_x_log10() + geom_smooth(method = "lm", size =1.5)

ggplot(data = gapminder, aes(x=gdpPercap, y=lifeExp)) + geom_point(alpha = 0.5, color = "red", size = 0.5) + 
  scale_x_log10() + geom_smooth(method = "lm", size =1.5)

ggplot(data = gapminder, aes(x=gdpPercap, y=lifeExp, color = continent)) + 
  geom_point(alpha = 0.5, size = 0.5, shape = 17) + 
  scale_x_log10() + geom_smooth(method = "lm", size =1.5)


az_row <- startsWith(as.vector(gapminder$country), c ("A", "Z"))
az_countries <- gapminder[az_row, ]

ggplot(data=az_countries, aes(x = year, y = lifeExp, color = continent))+
  geom_line() + facet_wrap(~country)

lifeExp_plot <- ggplot(data=az_countries, aes(x = year, y = lifeExp, color = continent))+
  geom_line() + facet_wrap(~country) + 
  labs(
    x = "Year",  
    y = "Lefe Expectancy",
    title = "Figure 1",
    color = "Continent") +
  theme(axis.text.x = element_text(angle=45), axis.ticks.x=element_blank())

ggsave(filename = "lifeExp.png", plot = lifeExp_plot, width = 12, 
       height = 10, dpi = 300, unit = "cm")

ggsave("myplot.pdf")

ggplot(data = gapminder[gapminder$country=="Sweden",], aes (x=year))+
  geom_bar(fill="orange")

e_rows <- startsWith(as.vector(gapminder$country), c ("E"))
e_countries <- gapminder[e_rows,]
ggplot(data = az_countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
         labs(
           x = "Year",                     # x axis title
           y = "Population (Million)",     # y axis title
           title = "Figure 1",             # main title of figure
           fill = "Continent"              # title of legend
         ) +
         theme(axis.text.x=element_text(angle=45), axis.ticks.x=element_blank()) +
         theme_bw()

LifeExp_plot <- ggplot(data = az_countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) +
  theme(axis.text.x=element_text(angle=45), axis.ticks.x=element_blank())

ggplot(data=gapminder, aes(x=continent, y=lifeExp)) + 
  geom_bar(aes(fill = continent), stat="summary",fun.y="mean") 


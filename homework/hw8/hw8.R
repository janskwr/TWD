library("DataExplorer")
library(dplyr)
library(ggplot2)
library(dlookr)
library(dplyr)
library("dataReporter")
mushrooms <- read.csv("~/work-temp/3 sem/techniki wizualizacji danych/homework/hw8/archive/mushrooms.csv")
head(mushrooms)
plot_bar(mushrooms)
makeDataReport(mushrooms)

df1 <-
  mushrooms %>%
  select('class', 'cap.color') %>%
  ggplot(aes(fill=class, y=count(class), x=cap.color)) +
  geom_bar(position="dodge", stat="identity")
df1


df2 <- mushrooms %>% 
  group_by(cap.color, class) %>% 
  summarise(summedMushrooms = sum(class)) %>% 
  ggplot(aes(x = cap.color, y = summedMushrooms, fill = as.factor(class))) +
  geom_bar(stat = "identity", position = "dodge")
df2

tbl <- with(mushrooms, table(class, cap.color))
tbl
barplot(tbl, beside = TRUE, legend = TRUE)

tbl2 <- with(mushrooms, table(class, odor))
tbl2
barplot(tbl2, beside = TRUE, legend = TRUE)

tbl3 <-with(mushrooms, table(class, habitat))
tbl3
barplot(tbl3, beside = TRUE, legend = TRUE)

tbl4 <-with(mushrooms, table(class, ring.number))
tbl4
barplot(tbl4, beside = TRUE, legend = TRUE)

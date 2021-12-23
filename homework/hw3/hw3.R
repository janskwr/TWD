a <- c('A', 'B', 'C', 'D', 'E', 'F')
b <- c(23, 17, 22, 17, 11, 10)
df <- data.frame(a, b)

c <- c(15, 0, 0, 0, 0, 0)
pyt1 <- data.frame(a, c)

d <- c(3, 3, 5, 4, 0, 0)
pyt1v2 <- data.frame(a,d)

e <- c(0, 0, 0, 0, 0, 15)
pyt2 <- data.frame(a, e)

f <- c(0, 0, 0, 0, 3, 12)
pyt2v2 <- data.frame(a, f)

cos3 <- c(4, 7, 4)
pyt3v2 <- data.frame(cos1, cos3)
ostatniev2 <- ggplot(pyt3v2, mapping = aes(y=cos3, x=cos1)) +
  geom_col() +
  theme(axis.title = element_blank())
ostatniev2
cos1 <- c("B większe", "D większe", "B i D takie same")
cos2 <- c(0, 0, 15)
pyt3 <- data.frame(cos1, cos2)
ostatnie <- ggplot(pyt3, mapping = aes(y=cos2, x=cos1)) +
  geom_col() +
  theme(axis.title = element_blank())
ostatnie
dane_pyt2kol <- ggplot(pyt2v2, mapping = aes(y=f, x=a)) +
  geom_col() +
  theme(axis.title = element_blank())
dane_pyt2kol

dane_pyt2slup <- ggplot(pyt2, mapping = aes(y=e, x=a)) +
  geom_col() +
  theme(axis.title = element_blank())

dane_pyt2slup
library(ggplot2)
dane_pyt1kol <- ggplot(pyt1v2, mapping = aes(y=d, x=a)) +
  geom_col() +
  theme(axis.title = element_blank())

dane_pyt1kol

dane_pyt1slub <- ggplot(pyt1, mapping = aes(y = c, x = a)) +
  geom_col() +
  theme(axis.title = element_blank())

dane_pyt1slub

wykres <- ggplot(df, mapping = aes(y = b, x = a)) +  
  geom_col(fill = c("red", "green", "blue", "yellow", "brown", "orange")) +
  scale_color_manual(values = c("red", "green", "blue", "yellow", "brown", "orange") ) +
  theme(legend.position="none") +
  theme(axis.text.y  = element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank())
wykres

wykres2 <- ggplot(df, aes(x="", y=b, fill=a)) +
  geom_bar(stat="identity", width=1, color=c("white")) +
  coord_polar("y", start=0) +
  theme(legend.title = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text = element_blank(),
        axis.line = element_blank())
wykres2

library(dplyr)
library(ggplot2)
library(tidyr)

wybor <- c('PiS', 'Koalicja Obywatelska', 'Polska 2050', 'Lewica',
                  'Konfederacja', 'PSL', 'nie wiem')
wynik <- c(36, 25, 14, 9, 5, 5, 6)

df <- data.frame(wybor, wynik)

p_col <- ggplot(data = df, mapping = aes(y = wynik, x = wybor)) +
  geom_col(fill = 'dark red') +
  labs(
    title = "Na kogo chcą głosować Polacy?",
    subtitle = NULL,
    caption = "Data: IBRiS",
    tag = NULL,
    y = "wynik (%)",
    x = NULL
  ) +
  geom_text(aes(label = wynik), vjust = -0.5) +
  theme(plot.title = element_text(face = "bold",
                                  margin = margin(10, 0, 10, 0),
                                  size = 20,
                                  hjust = 0))

p_col

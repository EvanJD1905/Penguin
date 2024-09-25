install.packages('tidyverse')
library(tidyverse)

penguins = read_table('penguin_data.txt')

model1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(model1)

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) +
  geom_point() +
  stat_smooth(method = "lm")

print ('wow')

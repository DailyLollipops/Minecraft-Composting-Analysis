library(tidyverse)
library(ggplot2)
library(dplyr)

dataframe <- read.csv("cleaned.csv")

ggplot(dataframe) +
  geom_bar(mapping = aes(x = attempts)) +
  facet_wrap(~item) +
  labs(title = "Attempt Distribution per Item")

mean_per_item_df <- dataframe %>%
  group_by(item) %>%
  summarize(mean = mean(attempts)) +

ggplot(mean_per_item_df, aes(x=item, y=mean, fill = item)) + 
  geom_bar(stat = "identity") +
  labs(title = "Mean Attempts per Item")
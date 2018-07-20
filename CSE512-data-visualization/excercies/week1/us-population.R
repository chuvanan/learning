

library(readr)
library(dplyr)
library(ggplot2)

us_pop <- read_csv("../../data/census2000.csv")

us_pop <- us_pop %>%
    group_by(Year, Age) %>%
    mutate(TotalBySex = sum(People),
           PerctBySex = People / TotalBySex) %>%
    ungroup()

us_pop <- us_pop %>%
    group_by(Sex, Year) %>%
    mutate(TotalByAge = sum(People),
           PerctByAge = People / TotalByAge) %>%
    ungroup()

us_pop %>%
    filter(Sex == 1) %>%
    mutate(Year = factor(Year)) %>%
    ggplot(aes(factor(Age), PerctBySex, color = Year, group = Year)) +
    geom_step(size = 1.1) +
    labs(title = "How share of US males changes by age group?",
         x = "Age Group",
         y = NULL) +
    scale_color_manual(values = c("coral4", "darkgoldenrod1")) +
    scale_x_discrete(breaks = seq(0, 90, 5)) +
    annotate("text", factor(5), 0.52, label = "2000", color = "darkgoldenrod1", size = 5) +
    annotate("text", factor(5), 0.49, label = "1900", color = "coral4", size = 5) +
    scale_y_continuous(labels = scales::percent) +
    theme_minimal(base_family = "Lato",
                  base_size = 13) +
    theme(legend.position = "none")

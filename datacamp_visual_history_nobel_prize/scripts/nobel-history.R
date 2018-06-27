

library(readr)
library(dplyr)
library(ggplot2)

nobel <- read_csv("../data/archive.csv")
names(nobel) <- tolower(names(nobel))
names(nobel) <- gsub(" ", "_", names(nobel))

## 01
head(nobel)

## 02
nobel %>% count()

nobel %>% count(sex)

nobel %>%
    count(birth_country) %>%
    arrange(desc(n)) %>%
    head(20)

## 03
prop_usa_winners <- nobel %>%
    mutate(usa_born_winner = birth_country == "United States of America",
           decade = (year %/% 10) * 10) %>%
    group_by(decade) %>%
    summarise(proportion = mean(usa_born_winner, na.rm = TRUE)) %>%
    ungroup()

## 04
ggplot(prop_usa_winners, aes(decade, proportion)) +
    geom_line() +
    geom_point() +
    scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
    labs(title = "USA dominance")


## 05
prop_female_winners <- nobel %>%
    mutate(female_winner = sex == "Female",
           decade = (year %/% 10) * 10) %>%
    group_by(decade, category) %>%
    summarise(proportion = mean(female_winner, na.rm = TRUE)) %>%
    ungroup()

ggplot(prop_female_winners, aes(decade, proportion, color = category)) +
    geom_line() +
    geom_point() +
    scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
    labs(title = "Female contribution")

## 06
nobel %>%
    filter(sex != "Male") %>%
    top_n(n = 1, desc(year))

## 07
nobel %>%
    count(full_name) %>%
    filter(n > 1)

## 08
nobel_age <- nobel %>%
    mutate(age = year - lubridate::year(birth_date))

ggplot(nobel_age, aes(year, age)) +
    geom_point() +
    geom_smooth()

## 09
ggplot(nobel_age, aes(year, age)) +
    geom_point() +
    geom_smooth(se = FALSE) +
    facet_wrap( ~ category)

## 10
nobel_age %>%
    top_n(1, desc(age)) %>%
    pull(full_name)

nobel_age %>%
    top_n(1, age)


library(readr)
library(dplyr)
library(corrplot)
library(ggplot2)

## Variable: Description
## id: identification number of customer
## mostFreqStore: store person bought mostly from
## mostFreqCat: category person purchased mostly
## nCats: number of different categories
## preferredBrand: brand person purchased mostly
## nBrands: number of different brands

salesData <- read_csv("../data/salesData.csv")

str(salesData, give.attr = FALSE)


## understand correlation of variables

salesData %>%
    select_if(is.numeric) %>%
    select(-id) %>%
    cor() %>%
    corrplot()

## distribution of sales by stores, brands

ggplot(salesData, aes(mostFreqStore, salesThisMon)) +
    geom_boxplot()

ggplot(salesData) +
    geom_boxplot(aes(preferredBrand, salesThisMon))

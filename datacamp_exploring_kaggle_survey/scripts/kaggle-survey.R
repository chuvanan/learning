

library(readr)
library(dplyr)

responses <- read_csv("../data/multipleChoiceResponses.csv")

dim(responses)

responses <- select(responses,
                    WorkToolsSelect, LanguageRecommendationSelect,
                    EmployerIndustry, WorkAlgorithmsSelect)
head(responses)

## -----------------------------------------------------------------------------
## Using multiple tools

tools <- responses %>%
    mutate(work_tools = split(WorkToolsSelect, ","))

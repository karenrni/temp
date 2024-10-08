#### Preamble ####
# Purpose: Simulates data
# Author: Karen Riani
# Date: 22 September 2024
# Contact: karen.riani@mail.utoronto.ca
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(42)

# Set number of Records
number_of_records <- 300

# Simulating data with desired variables
simulated_data <- tibble(
  OCCURRENCE_YEAR = sample(2018:2024, number_of_records, replace = TRUE),
  RACE_BIAS = sample(cleaned_data$RACE_BIAS, number_of_records, replace = TRUE),
  LOCATION_GROUP = sample(cleaned_data$LOCATION_GROUP, number_of_records, replace = TRUE),
  OFFENCE_GROUP = sample(cleaned_data$OFFENCE_GROUP, number_of_records, replace = TRUE)
)

## Tests ##

# Check OCCURRENCE_YEAR range
range(simulated_data$OCCURRENCE_YEAR)

# Check duplicate rows
sum(duplicated(simulated_data))

# Check unique occurrences for RACE_BIAS, LOCATION_GROUP, and OFFENCE_GROUP for distribution
table(simulated_data$RACE_BIAS)
table(simulated_data$LOCATION_GROUP)
table(simulated_data$OFFENCE_GROUP)

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")

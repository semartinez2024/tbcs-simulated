library(tidyverse)
library(readxl)
tbcs_simulated_data <- read_excel("tbcs_simulated_data.xlsx")

# use pipe for readability of code
# use rename, easier way to change column names

head(tbcs_simulated_data)
tail(tbcs_simulated_data)
nrow(tbcs_simulated_data)
ncol(tbcs_simulated_data)
glimpse(tbcs_simulated_data)
str(tbcs_simulated_data)

#rename variables and run glimpse again and continue onto Part 4
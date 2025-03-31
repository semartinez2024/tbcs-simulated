library(tidyverse)
library(readxl)
library(dplyr)

tbcs_simulated_data <- read_excel("tbcs_simulated_data.xlsx")
View(tbcs_simulated_data)

#use pipe for readability of code
#use rename, easier way to change column names

head(tbcs_simulated_data)
tail(tbcs_simulated_data)
nrow(tbcs_simulated_data)
ncol(tbcs_simulated_data)
glimpse(tbcs_simulated_data) #variable type, variable numbers, and observations
str(tbcs_simulated_data) #variable type, variable numbers, and observations

tbcs6mo_codebook_chinese <- read_excel("tbcs-simulated/TBCS主問卷編碼簿(6個月大) CHN.xls")
view(tbcs6mo_codebook_chinese)
nrow(tbcs6mo_codebook_chinese) #149
ncol(tbcs6mo_codebook_chinese) #6

tbcs6mo_codebook_english <- read_excel("tbcs-simulated/TBCS主問卷編碼簿(6個月大) ENG.xlsx")
view(tbcs6mo_codebook_english)
nrow(tbcs6mo_codebook_english) #149
ncol(tbcs6mo_codebook_english) #6

tbcs18mo_codebook_chinese <- read_excel("tbcs-simulated/TBCS主問卷編碼簿(18個月大) CHN.xls")
view(tbcs18mo_codebook_chinese)
nrow(tbcs18mo_codebook_chinese) #24
ncol(tbcs18mo_codebook_chinese) #5

tbcs18mo_codebook_english <- read_excel("tbcs-simulated/TBCS主問卷編碼簿(18個月大) ENG.xlsx")
view(tbcs18mo_codebook_english)
nrow(tbcs18mo_codebook_english) #24
ncol(tbcs18mo_codebook_english) #5


#rename variables and run glimpse again and continue onto Part 4
# base R
## colnames(df) <- c("NewName1", "NewName2")
# tidyverse

#library(dplyr)
##df <- df %>% rename(NewName1 = OldName1, NewName2 = OldName2)


library(tidyverse)
library(readxl)

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

tbcs6mo_codebook_chinese <- read_excel("TBCS主問卷編碼簿(6個月大) CHN.xls")
view(tbcs6mo_codebook_chinese)
nrow(tbcs6mo_codebook_chinese) #149
ncol(tbcs6mo_codebook_chinese) #6

tbcs6mo_codebook_english <- read_excel("TBCS主問卷編碼簿(6個月大) ENG.xlsx")
view(tbcs6mo_codebook_english)
nrow(tbcs6mo_codebook_english) #149
ncol(tbcs6mo_codebook_english) #6

tbcs18mo_codebook_chinese <- read_excel("TBCS主問卷編碼簿(18個月大) CHN.xls")
view(tbcs18mo_codebook_chinese)
nrow(tbcs18mo_codebook_chinese) #24
ncol(tbcs18mo_codebook_chinese) #5

tbcs18mo_codebook_english <- read_excel("TBCS主問卷編碼簿(18個月大) ENG.xlsx")
view(tbcs18mo_codebook_english)
nrow(tbcs18mo_codebook_english) #24
ncol(tbcs18mo_codebook_english) #5

#2 ways to change, use colnames(df) <- c("NewName1", "NewName2") or df <- df %>% rename(NewName1 = OldName1, NewName2 = OldName2)
tbcs_simulated_data <- tbcs_simulated_data %>% rename(Sample ID = sampleid, 
                                                      Taiwanese Year of Birth = b_yy_06m,
                                                      Gender = b_sex_06#should I leave this as gender, according to the codebook or should I change it to sex?
                                                      Birth Week = bb1_06m
                                                      Birth Weight = bb2_06m
                                                      Fetal Type = bb3_06m
                                                      c2am_06m
                                                      c2ad_06m
                                                      c2bm_06m
                                                      c2bd_06m
                                                      c2cm_06m
                                                      c2cd_06m
                                                      c2dm_06m
                                                      c2dd_06m
                                                      f5a1_06m
                                                      h1aa_6m
                                                      h1aa1_6m
                                                      h1ba_6m
                                                      h1ba1_6m
                                                      h1ab_6m
                                                      h1ab1_6m
                                                      h1bb_6m
                                                      h1bb1_6m
                                                      h1ac_6m
                                                      h1ac1_6m
                                                      h1bc_6m
                                                      h1bc1_6m
                                                      h1ad_6m
                                                      h1ad1_6m)
##rename cols and change levels

#rename variables and run glimpse again and continue onto Part 4


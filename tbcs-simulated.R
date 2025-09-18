library(tidyverse)
library(readxl)

tbcs_simulated_data <- read_excel("tbcs_simulated_data.xlsx")

#use pipe for readability of code
#use rename, easier way to change column names

head(tbcs_simulated_data)
tail(tbcs_simulated_data)
nrow(tbcs_simulated_data)
ncol(tbcs_simulated_data) #59
glimpse(tbcs_simulated_data) #variable type, variable numbers, and observations
str(tbcs_simulated_data) #variable type, variable numbers, and observations

tbcs6mo_codebook_chinese <- read_excel("TBCS主問卷編碼簿(6個月大) CHN.xls")
nrow(tbcs6mo_codebook_chinese) #149
ncol(tbcs6mo_codebook_chinese) #6
tbcs6mo_codebook_chinese <- "TBCS主問卷編碼簿(6個月大) CHN.xls"
sheet_names_tbcs6mo_codebook_chinese <- excel_sheets(tbcs6mo_codebook_chinese) #get all sheet names
data_list <- lapply(sheet_names_tbcs6mo_codebook_chinese, function (sheet){
  read_excel(tbcs6mo_codebook_chinese, sheet = sheet)
})
tbcs6mo_codebook_chinese_sheetA <- data_list[[1]]
tbcs6mo_codebook_chinese_sheetB <- data_list[[2]]


tbcs6mo_codebook_english <- read_excel("TBCS主問卷編碼簿(6個月大) ENG.xlsx")
nrow(tbcs6mo_codebook_english) #149
ncol(tbcs6mo_codebook_english) #6
tbcs6mo_codebook_english <- "TBCS主問卷編碼簿(6個月大) ENG.xlsx"
sheet_names <- excel_sheets(tbcs6mo_codebook_english)


tbcs18mo_codebook_chinese <- read_excel("TBCS主問卷編碼簿(18個月大) CHN.xls")
nrow(tbcs18mo_codebook_chinese) #24
ncol(tbcs18mo_codebook_chinese) #5
tbcs18mo_codebook_chinese <- "TBCS主問卷編碼簿(18個月大) CHN.xls"
sheet_names <- excel_sheets(tbcs18mo_codebook_chinese)

tbcs18mo_codebook_english <- read_excel("TBCS主問卷編碼簿(18個月大) ENG.xlsx")
view(tbcs18mo_codebook_english)
nrow(tbcs18mo_codebook_english) #24
ncol(tbcs18mo_codebook_english) #5
tbcs18mo_codebook_english <- "TBCS主問卷編碼簿(18個月大) ENG.xlsx"
sheet_names <- excel_sheets(tbcs18mo_codebook_english)

#change column names
tbcs_simulated_data <- rename(tbcs_simulated_data, #error in code saying that 'rename' cannot apply to an object of class "character"
       participant_identificaiton = sampleid,
       taiwanese_year_of_birth = b_yy_06m,
       participant_sex = b_sex_06,
       gestational_age = bb1_06m,
       birth_weight = bb2_06m,
       singleton_or_twin = bb3_06m,
       duration_drinking_breastmilk_or_formula = c2am_06m,	
       breastfeeding_only_days = c2ad_06m,
       breastmilk_as_main_source_months = c2bm_06m,	
       breastmilk_as_main_source_days = c2bd_06m,	
       formula_as_main_source_months = c2cm_06m,
       formula_as_main_source_days = c2cd_06m,	
       formula_only_months = c2dm_06m,	
       formula_only_days = c2dd_06m,	
       address = f5a1_06m,	
       parent_smoking_status = h1aa_6m,	
       daily_number_cigarettes = h1aa1_6m,	
       father_smoking_status_before_pregnancy = h1ba_6m,	
       father_daily_number_cigarettes_before_pregnancy = h1ba1_6m,	
       mother_smoking_status_first_trimester = h1ab_6m,	
       mother_daily_number_of_cigarettes_first_trimester = h1ab1_6m,	
       father_smoking_status_first_trimester = h1bb_6m,	
       father_daily_number_of_cigarettes_first_trimester = h1bb1_6m,	
       mother_smoking_status_second_trimester = h1ac_6m,	
       mother_daily_number_of_cigarettes_second_trimester = h1ac1_6m,	
       father_smoking_status_second_trimester = h1bc_6m,	
       father_daily_number_of_cigarettes_second_trimester = h1bc1_6m,	
       mother_smoking_status = h1ad_6m,	
       mother_daily_number_cigarettes = h1ad1_6m,	
       father_smoking_status = h1bd_6m,	
       father_daily_number_cigarettes = h1bd1_6m,	
       mother_alcohol_consumption_before_pregnancy = h2_a_6m,	
       mother_alcohol_consumption_before_pregnancy_over_3x_per_week = h2a_a_6m,	
       mother_alcohol_consumption_during_pregnancy = h2_b_6m,	
       mother_alcohol_consumption_during_pregnancy_over_3x_per_week = h2a_b_6m,	
       mother_alcohol_consumption = h2_c_6m,	
       mother_alcohol_consumption_over_3x_per_week = h2a_c_6m,	
       father_alcohol_consumption = h2_d_6m,	
       father_alcohol_consumption_over_3x_per_week = h2a_d_6m,	
       average_monthly_income_past_year = h13_06m,	
       incense_burning_at_home = k3_06m,	
      # m_age_bi codebook has Mage but idk what bi is supposed to indicate	
      # m_edu_g3 codebook has Medu but idkk what g3 is supposed to indicate
      # don't need father's age or edu?? (check lit)
       milestone_achievement = a6_1_18m,	
       month_age_of_milestone_achievement = a6a_1_18m,	
       milestone_walk_stedily = a6_2_18m,	
       month_age_milestone_walk_steadily = a6a_2_18m,	
       milestone_clapping = a6_3_18m,	
       month_age_milestone_clapping = a6a_3_18m,	
       milestone_scribble_with_pen = a6_4_18m,	
       month_age_milestone_scribble_with_pen = a6a_4_18m,	
       milestone_wave_goodbye = a6_5_18m,	
       month_age_milestone_wave_goodbye = a6a_5_18m,	
       milestone_call_a_parent = a6_6_18m,	
       month_age_milestone_call_a_parent = a6a_6_18m,	
       milestone_will_come_when_called = a6_7_18m,	
       month_age_milestone_will_come_when_called = a6a_7_18m,	
       milestone_drink_from_cup_with_both_hands = a6_8_18m,	
       month_age_milestone_drink_from_cup_with_both_hands = a6a_8_18m)

#change numerical values to nonnumerical
num_variables_to_nonnumerical <- c('participant_sex',
                                   'gestational_age',
                                   'birth_weight', 
                                   'singleton_or_twin', 
                                   'duration_drinking_breastmilk_or_formula',	
                                   'parent_smoking_status',
                                   'father_smoking_status_before_pregnancy',	
                                   'mother_smoking_status_first_trimester',
                                   'father_smoking_status_first_trimester',
                                   'mother_smoking_status_second_trimester',
                                   'father_smoking_status_second_trimester',
                                   'mother_smoking_status',
                                   'father_smoking_status',
                                   'mother_alcohol_consumption_before_pregnancy',
                                   'mother_alcohol_consumption_before_pregnancy_over_3x_per_week',
                                   'mother_alcohol_consumption_during_pregnancy',	
                                   'mother_alcohol_consumption_during_pregnancy_over_3x_per_week',	
                                   'mother_alcohol_consumption',
                                   'mother_alcohol_consumption_over_3x_per_week',
                                   'father_alcohol_consumption',
                                   'father_alcohol_consumption_over_3x_per_week',	
                                   'average_monthly_income_past_year',	
                                   'incense_burning_at_home',	
                                   # m_age_bi
                                   # m_edu_g3
                                   'milestone_achievement',
                                   'milestone_walk_stedily' ,
                                   'milestone_clapping' ,
                                   'milestone_scribble_with_pen',
                                   'milestone_wave_goodbye', 
                                   'milestone_call_a_parent',
                                   'milestone_will_come_when_called',
                                   'milestone_drink_from_cup_with_both_hands')

tbcs_simulated_data[num_variables_to_nonnumerical] <- lapply(tbcs_simulated_data[num_variables_to_nonnumerical], factor)
str(tbcs_simulated_data)

#convert id into string data not numerical
tbcs_simulated_data$participant_identificaiton <- as.character(tbcs_simulated_data$participant_identificaiton)
print(class(tbcs_simulated_data$participant_identificaiton)) #gives you strings only for participant_id
str(tbcs_simulated_data) #gives you ALL the strings, check against the survey if these are all correct



#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?

#change taiwanese year to roman year

#don't need father's age or edu?? (check lit)
## change levels
#consider having a master script and breaking things down into different folders
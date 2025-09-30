library(tidyverse)
library(readxl)

tbcs_simulated_data <- read_excel("tbcs_simulated_data.xlsx")

#exploratory data analysis

head(tbcs_simulated_data) #first 6 obs
tail(tbcs_simulated_data) #last 6 obs
dim(tbcs_simulated_data) #rows columns
str(tbcs_simulated_data) #internal structure, includes class(), var name, var type, and var obs

#change column names
tbcs_simulated_data <- rename(tbcs_simulated_data,
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
       mother_age = m_age_bi,
       mother_education_level = m_edu_g3,
      #don't need father's age or edu?? (check lit)
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

#check variable types (numerical, character, integer, logical)
str(tbcs_simulated_data)
taiwan_year_94 <- tbcs_simulated_data[tbcs_simulated_data$taiwanese_year_of_birth=='94'] #HERE
view(tbcs_simulated_data$taiwanese_year_of_birth)

#convert id into string data not numerical
tbcs_simulated_data$participant_identificaiton <- as.character(tbcs_simulated_data$participant_identificaiton)
print(class(tbcs_simulated_data$participant_identificaiton)) #gives you strings only for participant_id
str(tbcs_simulated_data) #gives you ALL the strings, check against the survey if these are all correct

head(tbcs_simulated_data$participant_sex)
distribution_sex <- table(tbcs_simulated_data$participant_sex)
mutate(tbcs_simulated_data$participant_sex, male=1, female=2)

#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?

#change taiwanese year to roman year

#don't need father's age or edu?? (check lit)
## change levels
#consider having a master script and breaking things down into different folders
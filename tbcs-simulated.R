library(tidyverse)
library(readxl)

tbcs_simulated_data <- read_excel("tbcs_simulated_data.xlsx")

#exploratory data analysis

head(tbcs_simulated_data) #first 6 obs
tail(tbcs_simulated_data) #last 6 obs
dim(tbcs_simulated_data) #rows and columns
str(tbcs_simulated_data) #internal structure, includes class(), var name, var type, and var obs

#change column names

tbcs_simulated_data <- rename(tbcs_simulated_data,
       participant_identification = sampleid,
       taiwanese_year_of_birth = b_yy_06m,
       participant_sex = b_sex_06,
       gestational_age = bb1_06m,
       birth_weight = bb2_06m,
       singleton_or_twin = bb3_06m,
       exlcusively_breastfeeding_months = c2am_06m,	
       exlcusively_breastfeeding_days = c2ad_06m,
       breastmilk_as_main_source_months = c2bm_06m,	
       breastmilk_as_main_source_days = c2bd_06m,	
       formula_as_main_source_months = c2cm_06m,
       formula_as_main_source_days = c2cd_06m,	
       exclusively_formula_months = c2dm_06m,	
       exclusively_formula_days = c2dd_06m,	
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
       milestone_achievement = a6_1_18m,	
       month_age_of_milestone_achievement = a6a_1_18m,	
       milestone_walk_steadily = a6_2_18m,	
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

#change variable types (numeric, character, factor, date-time)
  #categorical data >> factor
  #numerical data >> numerical vs integer (continuous vs discrete)

#covert tw year to gregorian

tbcs_simulated_data <- tbcs_simulated_data %>%
  mutate(taiwanese_year_of_birth = as.numeric(taiwanese_year_of_birth) + 1911) 

#convert to char type

tbcs_simulated_data<- tbcs_simulated_data %>%
  mutate(participant_identification = as.character(participant_identification))

#convert to num type

tbcs_simulated_data <- tbcs_simulated_data %>%
  mutate(across(c(exlcusively_breastfeeding_months,
                exlcusively_breastfeeding_days, ###some exlcusively_breastfeeding_days are like 150 or 189 or 199????
                breastmilk_as_main_source_months,	
                breastmilk_as_main_source_days,	
                formula_as_main_source_months,
                formula_as_main_source_days,
                exclusively_formula_months,	
                exclusively_formula_days,
                daily_number_cigarettes,
                father_daily_number_cigarettes_before_pregnancy,
                mother_daily_number_of_cigarettes_first_trimester,
                father_daily_number_of_cigarettes_first_trimester,
                mother_daily_number_of_cigarettes_second_trimester,
                father_daily_number_of_cigarettes_second_trimester,
                mother_daily_number_cigarettes,
                father_daily_number_cigarettes,
                mother_age,
                month_age_of_milestone_achievement,
                month_age_milestone_walk_steadily,
                month_age_milestone_clapping,
                month_age_milestone_scribble_with_pen,
                month_age_milestone_wave_goodbye,
                month_age_milestone_call_a_parent,
                month_age_milestone_will_come_when_called,
                month_age_milestone_drink_from_cup_with_both_hands), as.numeric)) 

#covert to factor type (levels)

tbcs_simulated_data<- tbcs_simulated_data %>%
  mutate(across(c(participant_sex,
          gestational_age,
          birth_weight,
          singleton_or_twin,
          address, #codification for address in appendix
          parent_smoking_status,
          father_smoking_status_before_pregnancy,
          mother_smoking_status_first_trimester,
          father_smoking_status_first_trimester,
          mother_smoking_status_second_trimester,
          father_smoking_status_second_trimester,
          mother_smoking_status,
          father_smoking_status,
          mother_alcohol_consumption_before_pregnancy,
          mother_alcohol_consumption_before_pregnancy_over_3x_per_week,
          mother_alcohol_consumption_during_pregnancy,
          mother_alcohol_consumption_during_pregnancy_over_3x_per_week,
          mother_alcohol_consumption_during_pregnancy,
          mother_alcohol_consumption_during_pregnancy_over_3x_per_week,
          mother_alcohol_consumption,	
          mother_alcohol_consumption_over_3x_per_week,	
          father_alcohol_consumption,
          father_alcohol_consumption_over_3x_per_week,
          average_monthly_income_past_year,
          incense_burning_at_home,
          mother_education_level,
          milestone_achievement,
          milestone_walk_steadily,
          milestone_clapping,
          milestone_scribble_with_pen,
          milestone_wave_goodbye,
          milestone_call_a_parent,
          milestone_will_come_when_called,
          milestone_drink_from_cup_with_both_hands), as.factor))

mother_age_ <- tbcs_simulated_data[grepl("^45\\.?\\d*$", tbcs_simulated_data$mother_age), ]
view(mother_age_45)
max(tbcs_simulated_data$mother_age)
min(tbcs_simulated_data$mother_age)
youngest_mother <- subset (tbcs_simulated_data, mother_age == 10.29949)
youngest_mother
print(youngest_mother)

#################

str(tbcs_simulated_data)
mother_age_17 <- tbcs_simulated_data[tbcs_simulated_data$mother_age=='17',]
view(mother_age_17)

head(tbcs_simulated_data$mother_age)
head(tbcs_simulated_data$mother_education_level)

#useful tools for modifying variable types
str(df) #dataset structure
unique(df$col) #check the levels of each variable
mutate() #make new col with existing data
as.integer()
as.character()
as.numeric()
as.factor()
df <- df[df$col=='value',] #finding observations with specific values for a certain observation

distribution_sex <- table(tbcs_simulated_data$participant_sex)
mutate(tbcs_simulated_data$participant_sex, m=1, f=2)

#goal: create descriptive stats table
#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?

#consider having a master script and breaking things down into different folders
#do other tbcs studies use father's edu, or only mother's edu?
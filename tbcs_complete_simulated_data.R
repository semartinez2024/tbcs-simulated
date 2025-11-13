install.packages("tidyverse" , "data.table")
library(tidyverse)
library(data.table)

tbcs_6mo <- fread("TBCS_6m_simulated.csv" , colClasses = list(character = "TOWN"))
tbcs_18mo <- read.csv("TBCS_18m_simulated.csv")

tbcs_6mo <- tbcs_6mo%>%
      rename(participant_identification = Sampleid,
       infant_sex = B_SEX,
       gestational_age =BB1_L,
       birth_weight = BB2_L,
       birth_type = Aa28,
       
       #parental factors
       maternal_age = Mage,
       maternal_edu = Medu,
       exlcusively_breastfeeding_days = C2ad,
       mother_smoking_status_before_pregnancy = H1aa,	#any Y = Y
       father_smoking_status_before_pregnancy = H1ba,	
       mother_smoking_status_first_trimester = H1ab,	
       father_smoking_status_first_trimester = H1bb,  ##8 is mose likely error, you should consider NA
       mother_smoking_status_second_trimester = H1ac,
       father_smoking_status_second_trimester = H1bc,	
       mother_smoking_status_now = H1ad,
       father_smoking_status_now = H1bd,
       mother_alcohol_consumption_during_pregnancy = H2_b, #1 = Y . combine with now over 3x wk
       mother_alcohol_consumption_now_over_3x_per_week = H2a_c,	#1 = Y
       average_monthly_income_past_year = H13,
    
       #environmental factors
       proximity_incinerator = K1_1,
      incense_burning_at_home = K3)
       
tbcs_18mo <- tbcs_18mo %>% 
  rename(milestone_achievement = A6_1_18m,	
       month_age_of_milestone_achievement = A6a_1_18m,	
       milestone_walk_steadily = A6_2_18m,	
       month_age_milestone_walk_steadily = A6a_2_18m,	
       milestone_clapping = A6_3_18m,	
       month_age_milestone_clapping = A6a_3_18m,	
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

breastfeeding_over_30d <- mutate()

tbcs_data <- tbcs_6mo %>% select(participant_identification, infant_sex, gestational_age, birth_weight, birth_type, maternal_age, maternal_edu, )

#source()
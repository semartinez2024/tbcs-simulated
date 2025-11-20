library(tidyverse)
library(data.table)
library(finalfit)

# Create TBCS df (all variables of interest) ------------------------------

tbcs_6mo <- fread("v1.1/TBCS_6m_simulated.csv" , colClasses = list(character = "TOWN")) #use fread() or read_csv they're faster
tbcs_18mo <- fread("v1.1/TBCS_18m_simulated.csv")

#rename variables from 6mo tbcs    
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

#rename variables from 18mo tbcs       
tbcs_18mo <- tbcs_18mo %>% 
  rename(participant_identification = Sampleid,
        milestone_achievement = A6_1,	
       month_age_of_milestone_achievement = A6a_1,	
       milestone_walk_steadily = A6_2,	
       month_age_milestone_walk_steadily = A6a_2,	
       milestone_clapping = A6_3,	
       month_age_milestone_clapping = A6a_3,	
       milestone_scribble_with_pen = A6_4,	
       month_age_milestone_scribble_with_pen = A6a_4,	
       milestone_wave_goodbye = A6_5,
       month_age_milestone_wave_goodbye = A6a_5,	
       milestone_call_a_parent = A6_6,	
       month_age_milestone_call_a_parent = A6a_6,	
       milestone_will_come_when_called = A6_7,	
       month_age_milestone_will_come_when_called = A6a_7,	
       milestone_drink_from_cup_with_both_hands = A6_8,	
       month_age_milestone_drink_from_cup_with_both_hands = A6a_8)

#merge the 2 waves for tbcs
combined_tbcs_data <- merge(tbcs_6mo, tbcs_18mo, by = "participant_identification")

#selecting pertinent variables
tbcs_data <- combined_tbcs_data %>% 
              select(participant_identification,
              infant_sex,
              gestational_age,
              birth_weight,
              birth_type,
              maternal_age,
              maternal_edu,
              exlcusively_breastfeeding_days,
              mother_smoking_status_before_pregnancy,	#any Y = Y
              father_smoking_status_before_pregnancy,	
              mother_smoking_status_first_trimester,	
              father_smoking_status_first_trimester,  ##8 is mose likely error, you should consider NA
              mother_smoking_status_second_trimester,
              father_smoking_status_second_trimester,	
              mother_smoking_status_now,
              father_smoking_status_now,
              mother_alcohol_consumption_during_pregnancy, #1 = Y . combine with now over 3x wk
              mother_alcohol_consumption_now_over_3x_per_week,	#1 = Y
              average_monthly_income_past_year,
              proximity_incinerator,
              incense_burning_at_home,
              milestone_achievement,	
              month_age_of_milestone_achievement,	
              milestone_walk_steadily,	
              month_age_milestone_walk_steadily,	
              milestone_clapping,	
              month_age_milestone_clapping,	
              milestone_scribble_with_pen,	
              month_age_milestone_scribble_with_pen,	
              milestone_wave_goodbye,
              month_age_milestone_wave_goodbye,	
              milestone_call_a_parent,	
              month_age_milestone_call_a_parent,	
              milestone_will_come_when_called,	
              month_age_milestone_will_come_when_called,	
              milestone_drink_from_cup_with_both_hands,	
              month_age_milestone_drink_from_cup_with_both_hands)


# Clean Data (missing values, variable type, etc) -------------------------



#goal: create descriptive stats table
#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?

#consider having a master script and breaking things down into different folders
#do other tbcs studies use father's edu, or only mother's edu?
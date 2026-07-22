#Clean Data

##varaibles that already have NA (i.e. no need to manipulate) ----
  ###demographics----
    #participant identification doesn't need NA, that was already fixed when using join() in df script, only participants with answers to both 6mo and 18mo surveys included  
  ###confounders----  
    #gestational_age already has NA
    #birth_weight already has NA
  ###maternal variables ----
    #maternal_age already has NA
    #maternal_edu already has NA
    #exlcusively_breastfeeding_days already has NA 
  ###environmental variables ----
    #all (the two in this category) needed manipulating
combined_tbcs_data <- combined_tbcs_data %>% mutate (birth_type = na_if(birth_type, "9"),
                                                     mother_smoking_status_before_pregnancy = na_if(mother_smoking_status_before_pregnancy, "9"),
                                                     father_smoking_status_before_pregnancy = na_if(father_smoking_status_before_pregnancy, "9"),
                                                     mother_smoking_status_first_trimester = na_if(mother_smoking_status_first_trimester, "9"),
                                                     father_smoking_status_first_trimester = na_if(father_smoking_status_first_trimester, "9"),
                                                     mother_smoking_status_second_trimester = na_if(mother_smoking_status_second_trimester, "9"),
                                                     father_smoking_status_second_trimester = na_if(father_smoking_status_second_trimester, "9"),
                                                     mother_smoking_status_now = na_if(mother_smoking_status_now, "9"),
                                                     father_smoking_status_now = na_if(father_smoking_status_now, "9"),
                                                     mother_alcohol_consumption_during_pregnancy = na_if(mother_alcohol_consumption_during_pregnancy, "9"),
                                                     mother_alcohol_consumption_now_over_3x_per_week = na_if(mother_alcohol_consumption_now_over_3x_per_week, "9"),
                                                     average_monthly_income_past_year = na_if(average_monthly_income_past_year, "99"),
                                                     proximity_incinerator = na_if(proximity_incinerator, "9"),
                                                     incense_burning_at_home = na_if(incense_burning_at_home, "9"))
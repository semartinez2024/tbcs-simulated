#Clean Data

##demographic variables ----
  #participant identification doesn't need NA, that was already fixed when using join() in df script, only participants with answers to both 6mo and 18mo surveys included

##covariates/confounders ----

###infant variables ----
  #gestational_age already has NA
  #birth_weight already has NA
  na_if(combined_tbcs_data$birth_type, "9")

                                                combined_tbcs_data$birth_type <-   na_if(combined_tbcs_data$birth_type, "9")
                                    
###maternal variables ----
  #maternal_age already has NA
  #maternal_edu already has NA
  #exlcusively_breastfeeding_days already has NA 
  na_if(combined_tbcs_data$mother_smoking_status_before_pregnancy, "9")
                              #0. No1.have9.NA >> no 0??? so every smoked or the 9s were suppose to be 0
                              #na_if(combined_tbcs_data$father_smoking_status_before_pregnancy,)
  na_if(combined_tbcs_data$father_smoking_status_before_pregnancy, "9")
  na_if(combined_tbcs_data$mother_smoking_status_first_trimester, "9")
                              #0. No1.have9.NA >> no 0??? so every smoked or the 9s were suppose to be 0
                              #na_if(combined_tbcs_data$father_smoking_status_first_trimester,)
  na_if(combined_tbcs_data$father_smoking_status_first_trimester, "9")
  na_if(combined_tbcs_data$mother_smoking_status_second_trimester, "9")
                              #0. No1.have9.NA  >> no 0??? so every smoked or the 9s were suppose to be 0   
                              #na_if(combined_tbcs_data$father_smoking_status_second_trimester, H1bc
  na_if(combined_tbcs_data$father_smoking_status_second_trimester, "9")
  na_if(combined_tbcs_data$mother_smoking_status_now, "9")
                              #0. No1.have9.NA >> no 0??? so every smoked or the 9s were suppose to be 0 
                              #na_if(combined_tbcs_data$father_smoking_status_now, H1bd
  na_if(combined_tbcs_data$father_smoking_status_now, "9")
  na_if(combined_tbcs_data$mother_alcohol_consumption_during_pregnancy, "9")
  na_if(combined_tbcs_data$mother_alcohol_consumption_now_over_3x_per_week, "9")
  na_if(combined_tbcs_data$average_monthly_income_past_year, "99")
      
###environmental variables ----
na_if(combined_tbcs_data$proximity_incinerator, "9")
na_if(combined_tbcs_data$incense_burning_at_home, "9")
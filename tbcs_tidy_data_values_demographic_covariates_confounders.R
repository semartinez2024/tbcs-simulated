#Clean Data

####ASK YOURSELF HOW YOU WANT TO DEMOGRPAHIC DATA TO APPEAR IN THE TABLE

##demographic variables ----
#participant identification doesn't need NA, that was already fixed when using join() in df script
#2= female, 1 = male, NA  
combined_tbcs_data$infant_sex
      
      
##covariates/confounders ----
      
  #infant variables
      #3 = 37wk+, 2 = 28-37wk, 1 = less than 28wk, NA
      combined_tbcs_data$gestational_age
      # 2. 1500-2499 grams 3. 2500-3499 grams 4. More than 3500 grams, NA
      combined_tbcs_data$birth_weight
      #1. Single pregnancy 2. Twin pregnancy or more, NA, 9      
      combined_tbcs_data$birth_type
                  
                  
  #maternal variables
      #integer or NA
      combined_tbcs_data$maternal_age
      #1. Junior high school and below 2. Senior high school 3. College and above, NA
      combined_tbcs_data$maternal_edu
      #integer or NA
      combined_tbcs_data$exlcusively_breastfeeding_days
      #0. No1.have9.NA
      combined_tbcs_data$mother_smoking_status_before_pregnancy
      #0. No1.have9.NA
      combined_tbcs_data$father_smoking_status_before_pregnancy
      #0. No1.have9.NA
      combined_tbcs_data$mother_smoking_status_first_trimester
      #0. No1.have9.NA
      combined_tbcs_data$father_smoking_status_first_trimester
                                                            
      #0. No1.have9.NA                                 
      combined_tbcs_data$mother_smoking_status_second_trimester
      #0. No1.have9.NA      
      combined_tbcs_data$father_smoking_status_second_trimester
      #0. No1.have9.NA 
      combined_tbcs_data$mother_smoking_status_now
      #0. No1.have9.NA 
      combined_tbcs_data$father_smoking_status_now
      #0. No1.have9.NA       
      combined_tbcs_data$mother_alcohol_consumption_during_pregnancy
      #0. No1.have9.NA      
      combined_tbcs_data$mother_alcohol_consumption_now_over_3x_per_week
      #1. 3 Less than 10,000 yuantwenty three10,000 yuan～5 Less than 10,000 yuan3. 510,000 yuan～7 Less than 10,000 yuan4. 710,000 yuan～10 Less than 10,000 yuan5. 1010,000 yuan～15 Less than 10,000 yuan6. 1510,000 yuan～20 Less than 10,000 yuan7. 20 More than 10,000 yuan99.Unknown, unclear, don't remember, don't know, can't say, refuse to answer or indicate with "?"      
      combined_tbcs_data$average_monthly_income_past_year
                                                                                                      
                                                                                                      
#environmental variables
      #0. No1.have9.NA
      combined_tbcs_data$proximity_incinerator
      #0. No1. Yes, we burn incense on festivals or on the first and fifteenth day of the lunar month.2. Yes, I burn incense almost every morning and evening.3.Yes, I burn incense almost every day from morning till night.9.Not applicable, unknown, unclear, don’t remember, don’t know, can’t say, refuse to answer or indicate with “?”
      combined_tbcs_data$incense_burning_at_home
                                                                                                                  
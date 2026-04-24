#Clean Data

#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?
na_if(combined_tbcs_data$nutritional_supplement_consumption_6mo, 9)

##demographic variables ----
  #participant identification doesn't need NA, that was already fixed when using join() in df script
  #2= female, 1 = male, NA  
  na_if(combined_tbcs_data$infant_sex,


##covariates/confounders ----

#infant variables
#3 = 37wk+, 2 = 28-37wk, 1 = less than 28wk, NA
na_if(combined_tbcs_data$gestational_age, )
# 2. 1500-2499 grams 3. 2500-3499 grams 4. More than 3500 grams, NA
na_if(combined_tbcs_data$birth_weight, 
                              #1. Single pregnancy 2. Twin pregnancy or more, NA, 9      
                              na_if(combined_tbcs_data$birth_type,
                                    
     
#maternal variables
#integer or NA
na_if(combined_tbcs_data$maternal_age,
#1. Junior high school and below 2. Senior high school 3. College and above, NA
na_if(combined_tbcs_data$maternal_edu,
#integer or NA
na_if(combined_tbcs_data$exlcusively_breastfeeding_days, 
                            #0. No1.have9.NA
                            na_if(combined_tbcs_data$mother_smoking_status_before_pregnancy,
                            #0. No1.have9.NA
                            na_if(combined_tbcs_data$father_smoking_status_before_pregnancy,
                            #0. No1.have9.NA
                            na_if(combined_tbcs_data$mother_smoking_status_first_trimester,
                            #0. No1.have9.NA
                            na_if(combined_tbcs_data$father_smoking_status_first_trimester,
na_if(combined_tbcs_data$mother_smoking_status_second_trimester,
na_if(combined_tbcs_data$father_smoking_status_second_trimester,
na_if(combined_tbcs_data$mother_smoking_status_now,
na_if(combined_tbcs_data$father_smoking_status_now,
na_if(combined_tbcs_data$mother_alcohol_consumption_during_pregnancy,
na_if(combined_tbcs_data$mother_alcohol_consumption_now_over_3x_per_week,
na_if(combined_tbcs_data$average_monthly_income_past_year,
      
      #parental factors
      maternal_age = Mage, #integer
      maternal_edu = Medu, #factor
      exlcusively_breastfeeding_days = C2ad, #integer
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
      
#environmental variables
na_if(combined_tbcs_data$proximity_incinerator,
na_if(combined_tbcs_data$incense_burning_at_home,
      
      #environmental factors
      proximity_incinerator = K1_1,
      incense_burning_at_home = K3,
#Clean Data #### HOW DO YOU WANT TO DEMOGRPAHIC DATA TO APPEAR IN THE TABLE

#demographic variables ----

#participant identification doesn't need NA, that was already fixed when using join() in df script
#infant sex  
  #2= female, 1 = male, NA
  females_total <- sum(combined_tbcs_data$infant_sex == "2", na.rm = TRUE)      

#covariates/confounders ----
##infant variables ----
  
#gestational age
  #3 = 37wk+, 2 = 28-37wk, 1 = less than 28wk, NA
  browseURL("https://www.nichd.nih.gov/health/topics/preterm/conditioninfo") ## for definition of premature birth ie less than 37 weeks     
  term_birth_total <- sum(combined_tbcs_data$gestational_age == "3", na.rm = TRUE)
#birth weight  
  browseURL("https://www.who.int/data/gho/indicator-metadata-registry/imr-details/low-birthweight-(-newborns-who-weigh-2.5kg)") ## def for low birth weight (LBW) ie less than 2500g
  #1. Less than 1500 grams 2. 1500-2499 grams 3. 2500-3499 grams 4. More than 3500 grams, NA >> is distribution the same between the different groups? >> what's the stats test you'll use for this? finalfit will do this for you
  LBW_total <- sum(combined_tbcs_data$birth_weight == "2", na.rm = TRUE) + 
                  sum(combined_tbcs_data$birth_weight == "1", na.rm = TRUE)
#single vs twins
  #1. Single pregnancy 2. Twin pregnancy or more, NA, 9      
  single_baby_total <- sum(combined_tbcs_data$birth_type == "1", na.rm = TRUE)
                  7
##maternal variables ----
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
                                                                                                      
                                                                                                      
##environmental variables ----
      #0. No1.have9.NA
      combined_tbcs_data$proximity_incinerator
      #0. No1. Yes, we burn incense on festivals or on the first and fifteenth day of the lunar month.2. Yes, I burn incense almost every morning and evening.3.Yes, I burn incense almost every day from morning till night.9.Not applicable, unknown, unclear, don’t remember, don’t know, can’t say, refuse to answer or indicate with “?”
      combined_tbcs_data$incense_burning_at_home
                                                                                                                  
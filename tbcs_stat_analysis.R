library(finalfit)
library(arsenal) 
  

#goal: create descriptive stats table

# Stat Analysis -------

#arsenal ----
browseURL("https://mayoverse.github.io/arsenal/articles/tableby.html")
dim(combined_tbcs_data) #see rows and colums number
str(combined_tbcs_data) #see structure of variables 

#table 1: covariates and milestones, reference dag to choose and justify variables to include
#make your own codebook/guidebook for Brian, so it's clear when he runs the code, can be in r or other doc type

table_demographic_data <- tableby(bifido_6mo ~ combined_tbcs_data$infant_sex
                                  + combined_tbcs_data$gestational_age
                                  + combined_tbcs_data$birth_weight
                                  + combined_tbcs_data$birth_type
                                  , data = combined_tbcs_data)
summary(table_demographic_data, text = TRUE)
                       

                         #maternal variables
                        combined_tbcs_data$maternal_age 
                        combined_tbcs_data$maternal_edu 
                        combined_tbcs_data$exlcusively_breastfeeding_days 
                        combined_tbcs_data$mother_smoking_status_before_pregnancy
                        combined_tbcs_data$father_smoking_status_before_pregnancy
                        combined_tbcs_data$mother_smoking_status_first_trimester 
                        combined_tbcs_data$father_smoking_status_first_trimester 
                        combined_tbcs_data$mother_smoking_status_second_trimester
                        combined_tbcs_data$father_smoking_status_second_trimester
                        combined_tbcs_data$mother_smoking_status_now 
                        combined_tbcs_data$father_smoking_status_now 
                        combined_tbcs_data$mother_alcohol_consumption_during_pregnancy 
                        combined_tbcs_data$mother_alcohol_consumption_now_over_3x_per_week 
                        combined_tbcs_data$average_monthly_income_past_year
                        
                        #environmental variables
                        combined_tbcs_data$proximity_incinerator
                        combined_tbcs_data$incense_burning_at_home

table_probiotic_6mo <- tableby(bifido_6mo ~ milestone_achievement 
                               + milestone_walk_steadily 
                               + milestone_clapping
                               + milestone_scribble_with_pen
                               + milestone_wave_goodbye
                               + milestone_call_a_parent
                               + milestone_will_come_when_called
                               + milestone_drink_from_cup_with_both_hands
                               , data = combined_tbcs_data)

summary(table_probiotic_6mo, text = TRUE) ##explanatory variable is on the top (row) and the dependent variable is on the left side

table_probiotics_18mo <- tableby(bifido_18mo ~ milestone_achievement 
                                 + milestone_walk_steadily 
                                 + milestone_clapping
                                 + milestone_scribble_with_pen
                                 + milestone_wave_goodbye
                                 + milestone_call_a_parent
                                 + milestone_will_come_when_called
                                 + milestone_drink_from_cup_with_both_hands
                                 , data = combined_tbcs_data)

summary(table_probiotics_18mo, text = TRUE)

tableby.control(table_probiotic_6mo) #test distrib of IV across levels of categorical variables

#finalfit ----#ftable_probiotic_6moinalfit ----
browseURL("https://finalfit.org/articles/all_tables_examples.html")
explanatory = c("var1", "var2", "var3")
dependent = "var4"
colon_s %>% summary_factorlist(dependent, explanatory) 

#default hypothesis tests are chi-sq for categorical explanatory, F-test (aov ie analysis of variance) for continuous
colon_s %>% summary_factorlist(dependent, explanatory, p = TRUE) 
  #you don't need to dintinguish which hypothesis testing you are doing, but be mindful of the variable types you are making your explanatory variables
colon_s %>% summary_factorlist(dependent, explanatory, p = TRUE, p_cat = "fisher") #use fisher's exact test instead of chi-sq or aov

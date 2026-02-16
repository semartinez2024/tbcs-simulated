##demographic variables ----
combined_tbcs_data$participant_identification <- as.character(combined_tbcs_data$participant_identification)
combined_tbcs_data$infant_sex <- as.factor(combined_tbcs_data$infant_sex)


##covariates/confounders ----

#infant variables
combined_tbcs_data$gestational_age <- as.factor(combined_tbcs_data$gestational_age)
combined_tbcs_data$birth_weight <- as.factor(combined_tbcs_data$birth_weight)
combined_tbcs_data$birth_type <-as.factor(combined_tbcs_data$birth_type)

#maternal variables
combined_tbcs_data$maternal_age <- as.integer(combined_tbcs_data$maternal_age)
combined_tbcs_data$maternal_edu <- as.factor(combined_tbcs_data$maternal_edu)
combined_tbcs_data$exlcusively_breastfeeding_days <- as.integer(combined_tbcs_data$exlcusively_breastfeeding_days)
combined_tbcs_data$mother_smoking_status_before_pregnancy <- as.factor(combined_tbcs_data$mother_smoking_status_before_pregnancy)
combined_tbcs_data$father_smoking_status_before_pregnancy <- as.factor(combined_tbcs_data$father_smoking_status_before_pregnancy)
combined_tbcs_data$mother_smoking_status_first_trimester <- as.factor(combined_tbcs_data$mother_smoking_status_first_trimester)
combined_tbcs_data$father_smoking_status_first_trimester <- as.factor(combined_tbcs_data$father_smoking_status_first_trimester)
combined_tbcs_data$mother_smoking_status_second_trimester <- as.factor(combined_tbcs_data$mother_smoking_status_second_trimester)
combined_tbcs_data$father_smoking_status_second_trimester <- as.factor(combined_tbcs_data$father_smoking_status_second_trimester)
combined_tbcs_data$mother_smoking_status_now <- as.factor(combined_tbcs_data$mother_smoking_status_now)
combined_tbcs_data$father_smoking_status_now <- as.factor(combined_tbcs_data$father_smoking_status_now)
combined_tbcs_data$mother_alcohol_consumption_during_pregnancy <- as.factor(combined_tbcs_data$mother_alcohol_consumption_during_pregnancy)
combined_tbcs_data$mother_alcohol_consumption_now_over_3x_per_week <- as.factor(combined_tbcs_data$mother_alcohol_consumption_now_over_3x_per_week)
combined_tbcs_data$average_monthly_income_past_year <- as.factor(combined_tbcs_data$average_monthly_income_past_year)

#environmental variables
combined_tbcs_data$proximity_incinerator <- as.factor(combined_tbcs_data$proximity_incinerator)
combined_tbcs_data$incense_burning_at_home <- as.factor(combined_tbcs_data$incense_burning_at_home)

#explicit vs implicit missing values and inner_join >> what did I do with inner join?

na_if(x,y) 
  #x is vector or column to modify 
  #y is specific value that NA will replace

mutate(var1 = na_if(var1, "999/888/0")) 
  #replaces 999/888/0 with NA

mutate(across(where(is.character), ~na_if(.,"999/888/0")))
  #across multiple columns, this example changes 999/888/0 to NA for all character variables

#how can I tell if I have an implicit missing value?? >> use pivoting but doesn't that just undo the join I did earlier?
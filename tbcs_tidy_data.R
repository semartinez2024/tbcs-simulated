# Clean Data (missing values, variable type, etc) -------------------------

## change variable types ----

#demogrpahic variables
combined_tbcs_data <- as.character(combined_tbcs_data$participant_identification)

combined_tbcs_data$participant_idnetification <- as.character(combined_tbcs_data$participant_identification)
combined_tbcs_data$infant_sex <- as.factor(combined_tbcs_data$infant_sex)
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

#probiotic consumption 6 months
combined_tbcs_data$nutritional_supplement_consumption_6mo <- as.factor(combined_tbcs_data$nutritional_supplement_consumption_6mo)
combined_tbcs_data$bifido_6mo <- as.factor(combined_tbcs_data$bifido_6mo)

#developmental milestone variables
combined_tbcs_data$milestone_achievement <- as.factor(combined_tbcs_data$milestone_achievement)
month_age_of_milestone_achievement,	#90th percentile cutoff
combined_tbcs_data$milestone_walk_steadily <- as.factor(combined_tbcs_data$milestone_walk_steadily)
month_age_milestone_walk_steadily,	
combined_tbcs_data$milestone_clapping <- as.factor(combined_tbcs_data$milestone_clapping)
month_age_milestone_clapping,	
combined_tbcs_data$milestone_scribble_with_pen <- as.factor(combined_tbcs_data$milestone_scribble_with_pen)
month_age_milestone_scribble_with_pen,	
combined_tbcs_data$milestone_wave_goodbye <- as.factor(combined_tbcs_data$milestone_wave_goodbye)
month_age_milestone_wave_goodbye,	
combined_tbcs_data$milestone_call_a_parent <- as.factor(combined_tbcs_data$milestone_call_a_parent)
month_age_milestone_call_a_parent,	
combined_tbcs_data$milestone_will_come_when_called <- as.factor(combined_tbcs_data$milestone_will_come_when_called)
month_age_milestone_will_come_when_called,	
combined_tbcs_data$milestone_drink_from_cup_with_both_hands <- as.factor(combined_tbcs_data$milestone_drink_from_cup_with_both_hands)
month_age_milestone_drink_from_cup_with_both_hands,
nutritional_supplement_consumption_18mo, #
bifido_18mo)
#goal: create descriptive stats table
#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?

#do other tbcs studies use father's edu, or only mother's edu?
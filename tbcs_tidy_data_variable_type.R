# Clean Data

#change variable types ----

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

##independent variable ----

#probiotic consumption 6-mo and 18-mo
combined_tbcs_data$nutritional_supplement_consumption_6mo <- as.factor(combined_tbcs_data$nutritional_supplement_consumption_6mo)
combined_tbcs_data$bifido_6mo <- as.factor(combined_tbcs_data$bifido_6mo)
combined_tbcs_data$nutritional_supplement_consumption_18mo <- as.factor(combined_tbcs_data$nutritional_supplement_consumption_18mo)
combined_tbcs_data$bifido_18mo <- as.factor(combined_tbcs_data$bifido_18mo)

##dependent variable ----

#developmental milestone variables
combined_tbcs_data$milestone_achievement <- as.factor(combined_tbcs_data$milestone_achievement)
combined_tbcs_data$milestone_walk_steadily <- as.factor(combined_tbcs_data$milestone_walk_steadily)
combined_tbcs_data$milestone_clapping <- as.factor(combined_tbcs_data$milestone_clapping)
combined_tbcs_data$milestone_scribble_with_pen <- as.factor(combined_tbcs_data$milestone_scribble_with_pen)
combined_tbcs_data$milestone_wave_goodbye <- as.factor(combined_tbcs_data$milestone_wave_goodbye)
combined_tbcs_data$milestone_call_a_parent <- as.factor(combined_tbcs_data$milestone_call_a_parent)
combined_tbcs_data$milestone_will_come_when_called <- as.factor(combined_tbcs_data$milestone_will_come_when_called)
combined_tbcs_data$milestone_drink_from_cup_with_both_hands <- as.factor(combined_tbcs_data$milestone_drink_from_cup_with_both_hands)

combined_tbcs_data$month_age_of_milestone_achievement <- as.integer(combined_tbcs_data$month_age_of_milestone_achievement)
combined_tbcs_data$month_age_milestone_walk_steadily <- as.integer(combined_tbcs_data$month_age_milestone_walk_steadily)
combined_tbcs_data$month_age_milestone_clapping <- as.integer(combined_tbcs_data$month_age_milestone_clapping)
combined_tbcs_data$month_age_milestone_scribble_with_pen <- as.integer(combined_tbcs_data$month_age_milestone_scribble_with_pen)
combined_tbcs_data$month_age_milestone_wave_goodbye <- as.integer(combined_tbcs_data$month_age_milestone_wave_goodbye)	
combined_tbcs_data$month_age_milestone_call_a_parent <- as.integer(combined_tbcs_data$month_age_milestone_call_a_parent)
combined_tbcs_data$month_age_milestone_will_come_when_called <- as.integer(combined_tbcs_data$month_age_milestone_will_come_when_called)
combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands <- as.integer(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands)
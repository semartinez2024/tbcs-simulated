#Clean Data

browseURL("https://r4ds.hadley.nz/missing-values.html")
## deal with missing values ----

#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?

##independent variable ----

#probiotic consumption 6-mo and 18-mo
combined_tbcs_data$nutritional_supplement_consumption_6mo <- as.factor(combined_tbcs_data$nutritional_supplement_consumption_6mo)
combined_tbcs_data$bifido_6mo <- as.factor(combined_tbcs_data$bifido_6mo)
combined_tbcs_data$nutritional_supplement_consumption_18mo <- as.factor(combined_tbcs_data$nutritional_supplement_consumption_18mo)
combined_tbcs_data$bifido_18mo <- as.factor(combined_tbcs_data$bifido_18mo)

####create another variable to define as ever and never
#####suggestion: do milestone in another file

##dependent variable ----

#developmental milestone variables >> managing data >> 90th percetile cutoff
combined_tbcs_data$milestone_achievement <- as.factor(combined_tbcs_data$milestone_achievement)
combined_tbcs_data$milestone_walk_steadily <- as.factor(combined_tbcs_data$milestone_walk_steadily)
combined_tbcs_data$milestone_clapping <- as.factor(combined_tbcs_data$milestone_clapping)
combined_tbcs_data$milestone_scribble_with_pen <- as.factor(combined_tbcs_data$milestone_scribble_with_pen)
combined_tbcs_data$milestone_wave_goodbye <- as.factor(combined_tbcs_data$milestone_wave_goodbye)
combined_tbcs_data$milestone_call_a_parent <- as.factor(combined_tbcs_data$milestone_call_a_parent)
combined_tbcs_data$milestone_will_come_when_called <- as.factor(combined_tbcs_data$milestone_will_come_when_called)
combined_tbcs_data$milestone_drink_from_cup_with_both_hands <- as.factor(combined_tbcs_data$milestone_drink_from_cup_with_both_hands)

#the month age of the milestone achievments might have an error i.e. no real values just NA, 8888, 9999
combined_tbcs_data$month_age_of_milestone_achievement <- as.integer(combined_tbcs_data$month_age_of_milestone_achievement)	#90th percentile cutoff #only presents 9999 = have no idea 8888 = not applicable
combined_tbcs_data$month_age_milestone_walk_steadily <- as.integer(combined_tbcs_data$month_age_milestone_walk_steadily)
combined_tbcs_data$month_age_milestone_clapping <- as.integer(combined_tbcs_data$month_age_milestone_clapping)
combined_tbcs_data$month_age_milestone_scribble_with_pen <- as.integer(combined_tbcs_data$month_age_milestone_scribble_with_pen)
combined_tbcs_data$month_age_milestone_wave_goodbye <- as.integer(combined_tbcs_data$month_age_milestone_wave_goodbye)	
combined_tbcs_data$month_age_milestone_call_a_parent <- as.integer(combined_tbcs_data$month_age_milestone_call_a_parent)
combined_tbcs_data$month_age_milestone_will_come_when_called <- as.integer(combined_tbcs_data$month_age_milestone_will_come_when_called)
combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands <- as.integer(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands)
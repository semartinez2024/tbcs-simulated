#Clean Data

# missing values have been changed to NA, so now I need to deal with integars by grouping into above and below 90th percentile
# responses for variables below are > whole number, 8888 = not applicable, 9999 = have no idea
combined_tbcs_data$month_age_of_milestone_achievement
combined_tbcs_data$month_age_milestone_walk_steadily
combined_tbcs_data$month_age_milestone_clapping
combined_tbcs_data$month_age_milestone_scribble_with_pen
combined_tbcs_data$month_age_milestone_wave_goodbye
combined_tbcs_data$month_age_milestone_call_a_parent
combined_tbcs_data$month_age_milestone_will_come_when_called
combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands
## checking histogram fordistribution of month ages for the above

#find 90 prcentile ----
quantile(combined_tbcs_data$month_age_of_milestone_achievement, 0.9, na.rm = TRUE) #14
quantile(combined_tbcs_data$month_age_milestone_walk_steadily, 0.9, na.rm = TRUE) #18
quantile(combined_tbcs_data$month_age_milestone_clapping, 0.9, na.rm = TRUE) #13
quantile(combined_tbcs_data$month_age_milestone_scribble_with_pen, 0.9, na.rm = TRUE) #19
quantile(combined_tbcs_data$month_age_milestone_wave_goodbye, 0.9, na.rm = TRUE) #14
quantile(combined_tbcs_data$month_age_milestone_call_a_parent, 0.9, na.rm = TRUE) #14
quantile(combined_tbcs_data$month_age_milestone_will_come_when_called, 0.9, na.rm = TRUE) #14
quantile(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands, 0.9, na.rm = TRUE) #17

#mutate to new variable (above and below 90th percentile)
#rename dependent variable 'meeting' and 'not yet' values ----

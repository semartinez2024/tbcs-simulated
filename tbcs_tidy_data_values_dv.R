#Clean Data

## rename dependent variable 'meeting' and 'not yet' values ----

# missing values have been changed to NA, so now I need to deal with integars by grouping into above and below 90th percentile
# responses for variables below are > whole number, 8888 = not applicable, 9999 = have no idea
quantile(combined_tbcs_data$month_age_of_milestone_achievement)
combined_tbcs_data$month_age_milestone_walk_steadily
combined_tbcs_data$month_age_milestone_clapping
combined_tbcs_data$month_age_milestone_scribble_with_pen
combined_tbcs_data$month_age_milestone_wave_goodbye
combined_tbcs_data$month_age_milestone_call_a_parent
combined_tbcs_data$month_age_milestone_will_come_when_called
combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands
## checking histogram fordistribution of month ages for the above

# find 90 prcentile >> then mutate to new variable (above and below 90th)
ggplot(combined_tbcs_data, aes(x = month_age_of_milestone_achievement)) +
  geom_histogram(binwidth = 0.5)
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
general_milestone_90 <- quantile(combined_tbcs_data$month_age_of_milestone_achievement, 0.9, na.rm = TRUE)
walk_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_walk_steadily, 0.9, na.rm = TRUE)
clap_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_clapping, 0.9, na.rm = TRUE)
scribble_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_scribble_with_pen, 0.9, na.rm = TRUE)
wave_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_wave_goodbye, 0.9, na.rm = TRUE)
call_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_call_a_parent, 0.9, na.rm = TRUE)
come_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_will_come_when_called, 0.9, na.rm = TRUE)
drink_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands, 0.9, na.rm = TRUE)

#mutate to new variable (below 90th percentile is MET, above 90th percentile is NOT MET i.e., delayed) ----
combined_tbcs_data <- combined_tbcs_data %>% 
  mutate(percentile_90_milestone_achievement = quantile(month_age_of_milestone_achievement, probs = 0.9, na.rm = TRUE))

## compare every values to the 90th percentile values, above it is not met, below it is met, then 
view(combined_tbcs_data$month_age_of_milestone_achievement)

combined_tbcs_data$month_age_milestone_walk_steadily <-
combined_tbcs_data$month_age_milestone_clapping <-
combined_tbcs_data$month_age_milestone_scribble_with_pen <-
combined_tbcs_data$month_age_milestone_wave_goodbye <-
combined_tbcs_data$month_age_milestone_call_a_parent <-
combined_tbcs_data$month_age_milestone_will_come_when_called <-
combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands <-

combined_tbcs_data <- combined_tbcs_data %>% 
  mutate (milestone = case_when((bifido_6mo == 1)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 0)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 1)&(bifido_18mo == 0) ~ "ever",
                                (bifido_6mo == 1)&(bifido_18mo == 9) ~ "ever",
                                (bifido_6mo == 9)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 0)&(bifido_18mo == 0) ~ "never"))

#rename dependent variable 'meeting' and 'not yet' values ----

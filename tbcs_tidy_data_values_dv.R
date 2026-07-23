#Clean Data

## checking histogram for distribution of month ages for the above

#find 90 prcentile ----
general_milestone_90 <- quantile(combined_tbcs_data$month_age_of_milestone_achievement, 0.9, na.rm = TRUE)
walk_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_walk_steadily, 0.9, na.rm = TRUE)
clap_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_clapping, 0.9, na.rm = TRUE)
scribble_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_scribble_with_pen, 0.9, na.rm = TRUE)
wave_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_wave_goodbye, 0.9, na.rm = TRUE)
call_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_call_a_parent, 0.9, na.rm = TRUE)
come_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_will_come_when_called, 0.9, na.rm = TRUE)
drink_milestone_90 <- quantile(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands, 0.9, na.rm = TRUE)

#change integer values from numeric to binary (i.e 14 to 0/1) ----
## 0 = NOT MET, 1 = MET
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_of_milestone_achievement = case_when(month_age_of_milestone_achievement >= general_milestone_90 ~ "0",
                                                        month_age_of_milestone_achievement <= general_milestone_90 ~ "1"))
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_milestone_walk_steadily = case_when(month_age_milestone_walk_steadily >= walk_milestone_90 ~ "0",
                                                       month_age_milestone_walk_steadily <= walk_milestone_90 ~ "1"))
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_milestone_clapping = case_when(month_age_milestone_clapping >= clap_milestone_90 ~ "0",
                                                       month_age_milestone_clapping <= clap_milestone_90 ~ "1"))
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_milestone_scribble_with_pen = case_when(month_age_milestone_scribble_with_pen >= scribble_milestone_90 ~ "0",
                                                        month_age_milestone_scribble_with_pen <= scribble_milestone_90 ~ "1"))
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_milestone_wave_goodbye = case_when(month_age_milestone_wave_goodbye >= wave_milestone_90 ~ "0",
                                                      month_age_milestone_wave_goodbye <= wave_milestone_90 ~ "1"))
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_milestone_call_a_parent = case_when(month_age_milestone_call_a_parent >= call_milestone_90 ~ "0",
                                                       month_age_milestone_call_a_parent <= call_milestone_90 ~ "1"))
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_milestone_will_come_when_called = case_when(month_age_milestone_will_come_when_called >= come_milestone_90 ~ "0",
                                                       month_age_milestone_will_come_when_called <= come_milestone_90 ~ "1"))
combined_tbcs_data <- combined_tbcs_data %>%
  mutate(month_age_milestone_drink_from_cup_with_both_hands = case_when(month_age_milestone_drink_from_cup_with_both_hands >= drink_milestone_90 ~ "0",
                                                       month_age_milestone_drink_from_cup_with_both_hands <= drink_milestone_90 ~ "1"))



combined_tbcs_data <- combined_tbcs_data %>% 
  mutate (milestone = case_when((bifido_6mo == 1)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 0)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 1)&(bifido_18mo == 0) ~ "ever",
                                (bifido_6mo == 1)&(bifido_18mo == 9) ~ "ever",
                                (bifido_6mo == 9)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 0)&(bifido_18mo == 0) ~ "never"))

#rename dependent variable 'meeting' and 'not yet' values ----

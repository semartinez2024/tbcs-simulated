##probiotics EVER and NEVER
combined_tbcs_data <- combined_tbcs_data %>% 
  mutate (probiotic = case_when((bifido_6mo == 1)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 0)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 1)&(bifido_18mo == 0) ~ "ever",
                                (bifido_6mo == 1)&(bifido_18mo == 9) ~ "ever",
                                (bifido_6mo == 9)&(bifido_18mo == 1) ~ "ever",
                                (bifido_6mo == 0)&(bifido_18mo == 0) ~ "never"))
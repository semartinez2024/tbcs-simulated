#Clean Data

browseURL("https://r4ds.hadley.nz/missing-values.html") #missing values chapter

## deal with independent variable missing values----

#probiotic consumption 6-mo
na_if(combined_tbcs_data$nutritional_supplement_consumption_6mo, 9)  #0 = no, 1 = have, 9 = NA (refuse to answer, don't know, don't remember)
na_if(combined_tbcs_data$bifido_6mo, 9) #0 = no, 1 = have, 9 = NA

#probiotics 18 mo
na_if(combined_tbcs_data$nutritional_supplement_consumption_18mo, 9) #0 = no, 1 = have, 8 = NA, 9 = unknown
na_if(combined_tbcs_data$bifido_18mo, 9) #0 = no, 1 = have, 8 = NA, 9 = unknown

####create another variable to define as ever and never----
combined_tbcs_data <- combined_tbcs_data %>% 
                          mutate (probiotic = case_when((bifido_6mo == 1)&(bifido_18mo == 1) ~ "ever",
                                                          (bifido_6mo == 0)&(bifido_18mo == 1) ~ "ever",
                                                          (bifido_6mo == 1)&(bifido_18mo == 0) ~ "ever",
                                                          (bifido_6mo == 1)&(bifido_18mo == 9) ~ "ever",
                                                          (bifido_6mo == 9)&(bifido_18mo == 1) ~ "ever",
                                                          (bifido_6mo == 0)&(bifido_18mo == 0) ~ "never"))
                                                                                     
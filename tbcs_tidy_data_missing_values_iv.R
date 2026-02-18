#Clean Data

browseURL("https://r4ds.hadley.nz/missing-values.html") #missing values chapter

na_if(#col name, value)
  pivot_wider() > don't need for dv bc , values for variables are already single, there are no repeated measurements, the milestones were only measured at 18 mo not 6 mo
    
    pivot_longer() >> need for iv only, since its the only variable that was measured twice (repeated twice)
    
    orange 2 %>% 
      pivot_longer(cols = 2:8,
                  names_to = "AGE"
                  values_to = "CIRC")
    #values are explicitly missing, NOT implicityly missing

#treat unknowns as missing in data, also some numerical values have been changed to character like breastfeeding_only_days, how should I approach this, first insert missing values?

## deal with independent variable missing values----

#probiotic consumption 6-mo
na_if(combined_tbcs_data$nutritional_supplement_consumption_6mo, 9)  #0 = no, 1 = have, 9 = NA (refuse to answer, don't know, don't remember)
na_if(combined_tbcs_data$bifido_6mo, 9) #0 = no, 1 = have, 9 = NA

#probiotics 18 mo
na_if(combined_tbcs_data$nutritional_supplement_consumption_18mo, 9) #0 = no, 1 = have, 8 = NA, 9 = unknown
na_if(combined_tbcs_data$bifido_18mo, 9) #0 = no, 1 = have, 8 = NA, 9 = unknown

####create another variable to define as ever and never
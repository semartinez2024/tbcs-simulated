#Clean Data

## deal with independent variable missing values----

#probiotic consumption 6-mo
na_if(combined_tbcs_data$nutritional_supplement_consumption_6mo, "9")  #0 = no, 1 = have, 9 = NA (refuse to answer, don't know, don't remember)
na_if(combined_tbcs_data$bifido_6mo, "9") #0 = no, 1 = have, 9 = NA

#probiotics 18 mo
na_if(combined_tbcs_data$nutritional_supplement_consumption_18mo, "9") #0 = no, 1 = have, 8 = NA, 9 = unknown
na_if(combined_tbcs_data$bifido_18mo, "9") #0 = no, 1 = have, 8 = NA, 9 = unknown
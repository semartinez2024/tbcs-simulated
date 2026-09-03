#descriptive table

#make descriptive table using clean data
browseURL("https://www.rdocumentation.org/packages/finalfit/versions/1.1.0/topics/finalfit")
install.packages("table1")
library(table1)
table(~ females_total +  
       term_birth_total + 
       LBW_total + 
       single_baby_total +
       mean_mom_age +
       high_school_and_above +
       mean_days_breastfeeding +
       mom_smoked_before_pregnancy +
       dad_smoked_before_pregnancy +
       mom_smoked_first_tri +
       dad_smoked_first_tri +
       mom_smoked_second_tri +   
       dad_smoked_second_tri+
       mom_smokes_now +
       dad_smokes_now +   
       mom_alcohol_during_preganacy +     
       mom_alcohol_more_than_3x_week +
       monthly_income_below_median +
       monthly_income_below_median +
       incinerator +
       burn_incense_at_home | probiotic , data = combined_tbcs_data)

       
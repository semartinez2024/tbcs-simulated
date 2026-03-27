#Clean Data

browseURL("https://r4ds.hadley.nz/missing-values.html") #missing values chapter

    #na_if(#col name, value)
    #pivot_wider() > dont need for dv bc , values for variables are already single, there are no repeated measurements, the milestones were only measured at 18 mo not 6 mo
    #pivot_longer() >> need for iv only, since its the only variable that was measured twice (repeated twice)
        #example:
    #     orange 2 %>% 
    #       pivot_longer(cols = 2:8,
    #                   names_to = "AGE"
    #                   values_to = "CIRC")
    # values are explicitly missing, NOT implicityly missing

## deal with dependent variable missing values ----

## need to fix variables for the bottom code to be useful with data cleaning

na_if(combined_tbcs_data$milestone_achievement, 2)
na_if(combined_tbcs_data$milestone_walk_steadily, 2)
na_if(combined_tbcs_data$milestone_clapping, 2)
na_if(combined_tbcs_data$milestone_scribble_with_pen, 2)
na_if(combined_tbcs_data$milestone_wave_goodbye, 2)
na_if(combined_tbcs_data$milestone_call_a_parent, 2)
na_if(combined_tbcs_data$milestone_will_come_when_called, 2)
na_if(combined_tbcs_data$milestone_drink_from_cup_with_both_hands, 2)

#missing values for dv, having met or not the milestone

na_if(combined_tbcs_data$month_age_of_milestone_achievement, 8888)
na_if(combined_tbcs_data$month_age_of_milestone_achievement, 9999)
na_if(combined_tbcs_data$month_age_milestone_walk_steadily, 8888)
na_if(combined_tbcs_data$month_age_milestone_walk_steadily, 9999)
na_if(combined_tbcs_data$month_age_milestone_clapping, 8888)
na_if(combined_tbcs_data$month_age_milestone_clapping, 9999)
na_if(combined_tbcs_data$month_age_milestone_scribble_with_pen, 8888)
na_if(combined_tbcs_data$month_age_milestone_scribble_with_pen, 9999)
na_if(combined_tbcs_data$month_age_milestone_wave_goodbye, 8888)
na_if(combined_tbcs_data$month_age_milestone_wave_goodbye, 9999)
na_if(combined_tbcs_data$month_age_milestone_call_a_parent, 8888)
na_if(combined_tbcs_data$month_age_milestone_call_a_parent, 9999)
na_if(combined_tbcs_data$month_age_milestone_will_come_when_called, 8888)
na_if(combined_tbcs_data$month_age_milestone_will_come_when_called, 9999)
na_if(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands, 8888)
na_if(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands, 9999) #16 lines for 8 milestones x2, the rest of the month ages are integers (whole nu)

    ###weird values for dv months >> 0, 1, 2 months for achieving milestones??? >> 90th percentiles
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

## rename dependent variable 'meeting' and 'not yet' values ----

### MAKE SURE 0 = NA WHEN BRIAN SENDS THE CORRECT CODES, SHOULD BE # 0 = not yet, 1 = meeting, 2 =  no idea

na_if(milestone_achievement, 0)
na_if(milestone_walk_steadily, 0)
na_if(milestone_clapping, 0)
na_if(milestone_scribble_with_pen, 0)
na_if(milestone_wave_goodbye, 0)
na_if(milestone_call_a_parent, 0)
na_if(milestone_will_come_when_called, 0)
na_if(milestone_drink_from_cup_with_both_hands, 0)

      
        ## change to 90th percentile!!!!!
        month_age_of_milestone_achievement = A6a_1,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_walk_steadily = A6a_2,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_clapping = A6a_3,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_scribble_with_pen = A6a_4,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_wave_goodbye = A6a_5,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_call_a_parent = A6a_6,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_will_come_when_called = A6a_7,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_drink_from_cup_with_both_hands = A6a_8,# whole number, 8888 = not applicable, 9999 = have no idea
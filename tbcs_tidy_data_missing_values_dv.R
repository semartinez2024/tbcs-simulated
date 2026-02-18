#Clean Data

browseURL("https://r4ds.hadley.nz/missing-values.html") #missing values chapter

    na_if(#col name, value)
    pivot_wider() > don't need for dv bc , values for variables are already single, there are no repeated measurements, the milestones were only measured at 18 mo not 6 mo
    pivot_longer() >> need for iv only, since its the only variable that was measured twice (repeated twice)
        #example:
        orange 2 %>% 
          pivot_longer(cols = 2:8,
                      names_to = "AGE"
                      values_to = "CIRC")
    values are explicitly missing, NOT implicityly missing

## deal with dependent variable missing values ----

### need to fix variables for the bottom code to be useful with data cleaning
na_if(combined_tbcs_data$milestone_achievement, 2)
na_if(combined_tbcs_data$milestone_walk_steadily, 2)
na_if(combined_tbcs_data$milestone_clapping, 2)
na_if(combined_tbcs_data$milestone_scribble_with_pen, 2)
na_if(combined_tbcs_data$milestone_wave_goodbye, 2)
na_if(combined_tbcs_data$milestone_call_a_parent, 2)
na_if(combined_tbcs_data$milestone_will_come_when_called, 2)
na_if(combined_tbcs_data$milestone_drink_from_cup_with_both_hands, 2)

            #these values are fine
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

    ###weird values for dv months >> 0, 1, 2 months for achieving milestones???
      unique(combined_tbcs_data$month_age_of_milestone_achievement)
      unique(combined_tbcs_data$month_age_milestone_walk_steadily)
      unique(combined_tbcs_data$month_age_milestone_clapping)
      unique(combined_tbcs_data$month_age_milestone_scribble_with_pen)
      unique(combined_tbcs_data$month_age_milestone_wave_goodbye)
      unique(combined_tbcs_data$month_age_milestone_call_a_parent)
      unique(combined_tbcs_data$month_age_milestone_will_come_when_called)
      unique(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands)

## rename dependent variable 'meeting' and 'not yet' values ----

          ## rename 0 and 1 to appropriate response >> there might be additional issues with values for the following variables >> only 2, 1, and NA but according to the codebook, there should be 0, 1, 2 (where 2 = NA)
                                                                                                                                    #### I suspect 2 = meeting, 1 = not yet, and NA = 0
          milestone_achievement = A6_1,	# 0 = not yet, 1 = meeting, 2 =  no idea
          milestone_walk_steadily = A6_2,	# 0 = not yet, 1 = meeting, 2 =  no idea
          milestone_clapping = A6_3,	# 0 = not yet, 1 = meeting, 2 =  no idea
          milestone_scribble_with_pen = A6_4,	# 0 = not yet, 1 = meeting, 2 =  no idea
          milestone_wave_goodbye = A6_5, # 0 = not yet, 1 = meeting, 2 =  no idea
          milestone_call_a_parent = A6_6,	# 0 = not yet, 1 = meeting, 2 =  no idea
          milestone_will_come_when_called = A6_7,	# 0 = not yet, 1 = meeting, 2 =  no idea
          milestone_drink_from_cup_with_both_hands = A6_8,	# 0 = not yet, 1 = meeting, 2 =  no idea


      
        ## change to 90th percentile!!!!!
        month_age_of_milestone_achievement = A6a_1,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_walk_steadily = A6a_2,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_clapping = A6a_3,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_scribble_with_pen = A6a_4,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_wave_goodbye = A6a_5,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_call_a_parent = A6a_6,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_will_come_when_called = A6a_7,	# whole number, 8888 = not applicable, 9999 = have no idea
        month_age_milestone_drink_from_cup_with_both_hands = A6a_8,# whole number, 8888 = not applicable, 9999 = have no idea
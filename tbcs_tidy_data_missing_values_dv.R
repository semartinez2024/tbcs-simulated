#Clean Data

browseURL("https://r4ds.hadley.nz/missing-values.html") #missing values chapter

## deal with dependent variable missing values ----

#responses for variables below 0 = not yet, 1 = meeting, 2 = have no idea

na_if(combined_tbcs_data$milestone_achievement, "2")
na_if(combined_tbcs_data$milestone_walk_steadily, "2")
na_if(combined_tbcs_data$milestone_clapping, "2")
na_if(combined_tbcs_data$milestone_scribble_with_pen, "2")
na_if(combined_tbcs_data$milestone_wave_goodbye, "2")
na_if(combined_tbcs_data$milestone_call_a_parent, "2")
na_if(combined_tbcs_data$milestone_will_come_when_called, "2")
na_if(combined_tbcs_data$milestone_drink_from_cup_with_both_hands, "2")

#responses for variables below whole number, 8888 = not applicable, 9999 = have no idea

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
na_if(combined_tbcs_data$month_age_milestone_drink_from_cup_with_both_hands, 9999)
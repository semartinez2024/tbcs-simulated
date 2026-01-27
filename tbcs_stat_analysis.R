library(finalfit)
library(arsenal) 
  

#goal: create descriptive stats table

# Stat Analysis -------

#arsenal ----
browseURL("https://mayoverse.github.io/arsenal/articles/tableby.html")
dim(combined_tbcs_data) #see rows and colums number
str(combined_tbcs_data) #see structure of variables 

table_descriptive_data <- tableby()

table_probiotic_6mo_side_milestones <- tableby(bifido_6mo ~ milestone_achievement 
                               + milestone_walk_steadily 
                               + milestone_clapping
                               + milestone_scribble_with_pen
                               + milestone_wave_goodbye
                               + milestone_call_a_parent
                               + milestone_will_come_when_called
                               + milestone_drink_from_cup_with_both_hands
                               , data = combined_tbcs_data)
table_probiotic_6mo_side_probiotics <- tableby(list(milestone_achievement, 
                               milestone_walk_steadily, 
                               milestone_clapping,
                               milestone_scribble_with_pen,
                               milestone_wave_goodbye,
                               milestone_call_a_parent,
                               milestone_will_come_when_called,
                               milestone_drink_from_cup_with_both_hands) ~ bifido_6mo
                               , data = combined_tbcs_data)
summary(table_probiotic_6mo_side_milestones, text = TRUE) ##this table looks more concise but the explanatory variable is on the top (row) and the dependent variable is on the left side

summary(table_probiotic_6mo_side_probiotics, text = TRUE)

tableby.control() #test distrib of IV across levels of categorical variables

#finalfit ----
browseURL("https://finalfit.org/articles/all_tables_examples.html")
explanatory = c("var1", "var2", "var3")
dependent = "var4"
colon_s %>% summary_factorlist(dependent, explanatory) 

#default hypothesis tests are chi-sq for categorical explanatory, F-test (aov ie analysis of variance) for continuous
colon_s %>% summary_factorlist(dependent, explanatory, p = TRUE) 
  #you don't need to dintinguish which hypothesis testing you are doing, but be mindful of the variable types you are making your explanatory variables
colon_s %>% summary_factorlist(dependent, explanatory, p = TRUE, p_cat = "fisher") #use fisher's exact test instead of chi-sq or aov

library(finalfit)
library(arsenal) 
  

#goal: create descriptive stats table

# Stat Analysis -------

#arsenal ----
browseURL("https://mayoverse.github.io/arsenal/articles/tableby.html")
dim(df) #see rows and colums number
str() #see structure of variables 
tablename <- tableby(stratifiedvariable ~ var1 + var2, data=df) 
  #create simple table (name it whatever) stratified by a variable
    ##stratified variable will show at the top of the table, then var1 and var2 will show on the left side
summary(tablename, text = TRUE)
  #take a quick look at the table you made, use text = TRUE so that it looks nicer
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

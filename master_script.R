#Done----
  
  #make df
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_master_df.R")
  
  #data cleaning
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_missing_values_iv.R") #data_missing_values scripts all deal with NAs, the iv script includes codes for missing values and values for probiotic
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_missing_values_dv.R")  
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_variable_type.R") #do after dealing with NA so NAs are preserved
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_missing_values_demographic_covariates_confounders.R")
  
  #stats


#In-Progress----
  
  #data cleaning
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_values_dv.R")
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_values_demographic_covariates_confounders.R")  

  #stats
  source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_stat_analysis.R")
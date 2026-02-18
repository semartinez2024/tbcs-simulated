#make df
source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_master_df.R")

#data cleaning
source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_missing_values_demographic_covariates_confounders.R")
source("C:/Users/msara/OneDrive/DocumentsNTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_missing_values_iv_dv.R")
source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_tidy_data_variable_type.R") #do after dealing with NA so NAs are preserved

#stats
source("C:/Users/msara/OneDrive/Documents/NTU GHP/Thesis/Data/Outcome_tbcs-simulated/tbcs_stat_analysis.R")

The code from run_analysis.R first imports the data from "X_train.txt" and "X_test.txt". Due to many missing values being in the resulting dataframes, each dataframe needs to be converted to a vector, have NA values removed, converted to a matrix with 561 columns, and then to a data table. 

The column names are extracted from the file "features.txt" and read into R as a dataframe. The vector of column names is then assigned to the data tables test and train. test and train are then row binded into one data table. 

The goal is to get the columns with "means" and "std" in them. So, regex is used on the column names to get the correct column names. The data is then subsetted using these column names. 

Finally, the means of each of these columns is taken.
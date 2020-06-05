library(data.table)
library(dplyr)
library(stringr)
library(readr)
# merge_data_frames <- function(directory){
#   #An empty list is used to store multiple dataframes
#   #before being merged into one
#   #
#   #Args:
#   #   directory: a string of a directory
#   #Returns:
#   #   df.final: a dataframe holding multiple dataframes depending
#   #             on the length of id
#   files_list <- list.files(directory, full.names = TRUE)
#   datalist = list()
#   for(i in 1:length(files_list)){
#     df <- read.delim(files_list[i], header = FALSE, sep = " ")
#     #names(df) <-  c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
#     dt <- data.table(df)
#     datalist[[i]] <- dt
#   }
#   return(datalist)
#   df.final <- dplyr::bind_rows(test)
#   return(df.final)
# }

create_datatable <- function(directory, file){
  setwd(directory)
  # reading in the .txt file
  df <- read.delim(file, sep = " ", header = FALSE)
  # making the df a vector in order to remove NA values
  dfv <- as.vector(t(df))
  rm(df)
  # removing the NA values
  i <- complete.cases(dfv)
  dfv <- dfv[i]
  # creating a matrix 
  dfm <- matrix(testv, length(testv)/561, 561)
  rm(dfv)
  # converting matrix to a data table
  dt <- as.data.table(testm)
  return(dt)
}

testingdir <-"C:/Users/giera/OneDrive/Documents/School/The Data Scientist's Toolbox/Getting and Cleaning Data/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals"
trainingdir <- "C:/Users/giera/OneDrive/Documents/School/The Data Scientist's Toolbox/Getting and Cleaning Data/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals"
testingdirx <-"C:/Users/giera/OneDrive/Documents/School/The Data Scientist's Toolbox/Getting and Cleaning Data/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test"
trainingdirx <- "C:/Users/giera/OneDrive/Documents/School/The Data Scientist's Toolbox/Getting and Cleaning Data/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train"
namesdir <- "C:/Users/giera/OneDrive/Documents/School/The Data Scientist's Toolbox/Getting and Cleaning Data/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"
datalist <- merge_data_frames(testingdir)
class(test)

# creating test and train datatables
test <- create_dataframe(testingdirx, "X_test.txt")
dim(test)
train <- create_dataframe(trainingdirx,"X_train.txt")
View(test)
dim(train)
View(train)
# importing the column names
setwd(namesdir)
names <- read.delim("features.txt", header = FALSE, sep = " ")
names <- names$V2
names <- tolower(names)
# setting the column names for test.train
colnames(test) <- names
colnames(train) <- names
# row binding test and train
test.train <- rbind(test, train)

# finding columns with mean and std
indices <- grep("(mean)|(std)", colnames(test.train))
select.names <- names[i]

test.train.mean.std <- subset(test.train, select = select.names)
mean.std <- colMeans(test.train.mean.std)
mean.std <- as.data.table(mean.std)
mean.std <- t(mean.std)
select.names.mean <- paste(select.names, "average", sep = "")
colnames(mean.std) <- select.names.mean
rownames(mean.std) <- "1"
colnames(mean.std)
mean.std
write.table(mean.std, "mean.std.txt")
write.csv(colnames(mean.std), "column_names.csv")
# for(i in 1:length(datalist)){
#   data = datalist[i]
#   for(j in 1:dim(data)[2]){
#     if(length(is.na(data[,j])) > 0){
#       
#     }
#   }
# }
# list.1 <- as.vector(t(list.1))
# list.1 <- na.omit(list.1)
# length(list.1)/571
# list.1 <- as.matrix(list.1, length(list.1)/561,561)
# list.1
# list.1 <- datalist[[1]]
# list.1.1 <- list.1[,1]
# list.1.1 <- as.data.table(list.1.1)
# i <- is.na(list.1.1)
# i[i == TRUE]
# na.omit(list.1.1)
# list.1 <- gsub("(\\)", "", list.1, fixed = TRUE)
# list.1[1:100]
# dim(tbl_df(test))
# tbl_df(test)
# # length(test)
# test <- gsub("  ", ",", test)
# test
# x <- function() {
#     for(i in 1:length(test)){
#     print(dim(test[[i]]))
#     }
# }
# x()
# 
# test <- dplyr::bind_rows(datalist)
# test[1:100]
# 
# dt <- as.data.table(test)
# class(dt)
# dim(dt)
# head(dt)
# View(head(df.final))
# #dt <- sub("c\\(\\\  ", "", dt)
# dt <- sub("\\", "", dt)
# dt
# dt <- gsub("(\\)", "", dt, fixed = TRUE)
# dt <- gsub("(  )|( )", ",", dt)
# dt <- stringr::str_extract_all("\\", dt)
# #write.csv(df.final, "./test.csv")
# dt <- strsplit(dt, ",")
# rm(test)
# dt <- as.numeric(dt[[1]])
# dt[[1]][1:500]
# x <- readr::parse_number(x)
# indices <- grep("[0-9]+", dt[])
# x <- x[[1]][indices]
# #df <- read.csv("test.csv")
# x[[1]]

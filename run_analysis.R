library(tidyr)
library(dplyr)
library(stringr)

# save current working directory
currdir = getwd()
# if not exists data folder then create it
if (!file.exists("data")){
  dir.create("data")
}
# set new working directory in data
setwd("data")

# harcoded path to the data source on a website
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "dataset.zip"

#download.file(fileUrl, destfile = destfile)
if(!file.exists(destfile)){
  download.file(fileUrl, destfile)
  dateDownloaded <- date()
}

# unzipping file onto data folder 
unzip("dataset.zip")
mainfolder <- "./UCI HAR Dataset"
trainFolder <- "./UCI HAR Dataset/train"; 
testFolder <- "./UCI HAR Dataset/test"

# read activities data files
activitylabels <- read.table(file = paste(mainfolder, "/activity_labels.txt", 
                                          sep = ""), header = F)
# lowercase activity names
activitylabels[,2] <- tolower(activitylabels[,2])

# read features data files and lowercase them
features <- tolower(read.table(file = paste(mainfolder, "/features.txt", 
                                    sep = ""), header = F)[,2])
#
# --- Objective 2 of the Project ---
# 2.  Extracts only the measurements on the mean and standard deviation 
#     for each measurement.
#
# creates a vector with only mean() and std()
featureselected <- grep("mean\\(\\)*|std\\(\\)*", features, value = FALSE)

# these transformations will be used to split columns later on
featnames <- gsub("\\(\\)", "", features[featureselected])
featnames <- gsub("^t", "time-", featnames)
featnames <- gsub("^f", "frequency-", featnames)
featnames <- gsub("^time-body", "time-body-", featnames)
featnames <- gsub("^time-gravity", "time-gravity-", featnames)
featnames <- gsub("^frequency-body", "frequency-body-", featnames)
featnames <- gsub("mag-mean|mag-mean*", "-mean-mag", featnames)
featnames <- gsub("mag-std", "-std-mag", featnames)

# data from 'training' files dataset
filesubjecttrain <- paste(trainFolder, "/subject_train.txt", sep = "")
subjecttrain <- read.table(file = filesubjecttrain, header = F)
fileactivitytrain <- paste(trainFolder, "/y_train.txt", sep = "")
activitytrain <- read.table(file = fileactivitytrain, header = F)
filedatatrain <- paste(trainFolder, "/X_train.txt", sep = "")
datatrain <- read.table(file = filedatatrain, header = F)

# selecting only columns: mean() and std()
train_data <- datatrain[, featureselected]
# assigning proper names to columns
names(train_data) <- featnames

# assign names to activity to merge with train_data
train_labels <- activitylabels[activitytrain[,1],]

# adding column subject & activity
train <- cbind(subjecttrain, train_labels)
# adding column training data
train <- cbind(train, train_data)
train <- tbl_df(train)

# data from 'test' files dataset
filesubjecttest <- paste(testFolder, "/subject_test.txt", sep = "")
subjecttest <- read.table(file = filesubjecttest, header = F)
fileactivitytest <- paste(testFolder, "/y_test.txt", sep = "")
activitytest <- read.table(file = fileactivitytest, header = F)
filedatatest <- paste(testFolder, "/X_test.txt", sep = "")
datatest <- read.table(file = filedatatest, header = F)

# selecting only columns: mean() and std()
test_data <- datatest[, featureselected]
# assigning proper names to columns
names(test_data) <- featnames

# assign names to activity to merge with test_data
test_labels <- activitylabels[activitytest[,1],]

# adding column subject & activity
test <- cbind(subjecttest, test_labels)
# adding column test data
test <- cbind(test, test_data)
test <- tbl_df(test)

#
# --- Objective 1 of the Project ---
# 1.  Merges the training and the test sets to create one data set.
#
# merging training and testing data
pdata <- bind_rows(train, test)

#
# --- Objective 3 of the Project ---
# 3.  Uses descriptive activity names to name the activities in 
#     the data set
#
# changing column names on 1-2 columns
colnames(pdata)[1] <- "subject"
colnames(pdata)[2] <- "activity"
domain <- c('time', 'frequency')
type <- c('body', 'gravity')
device <- c('accelerometer', 'gyroscope')
stat <- c('mean', 'stdev')
component <- c('x', 'y', 'z', 'magnitude')

#
# --- Objective 4 of the Project ---
# 4.  Appropriately labels the data set with descriptive variable names.
#
# start process of tidying data
#
pdata <- pdata %>% 
            gather(measure, average, -subject, -activity) %>%
            separate(measure, c('domain', 'type', 'device', 
                                       'stat', 'component'))

#
# --- Objective 5 of the Project ---
# 5.  From the data set in step 4, creates a second, independent tidy 
#     data set with the average of each variable for each activity 
#     and each subject.
#
ind_ds <- pdata %>%
  select(subject, activity, domain, type, stat, component, average) %>%
  group_by(subject, activity, domain, type, stat, component) %>%
  summarize(meanvalue = mean(average)) %>%
  arrange(subject, activity, domain) 

write.table(ind_ds, file = "ind_ds.txt", row.names = FALSE)
write.csv(ind_ds, file = "ind_ds.csv", row.names = FALSE)


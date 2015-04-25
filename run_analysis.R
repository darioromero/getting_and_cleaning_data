suppressMessages(library(tidyr))
suppressMessages(library(dplyr))
suppressMessages(library(stringr)) 

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
unzip(destfile)
mainfolder <- "./UCI HAR Dataset"
trainFolder <- "./UCI HAR Dataset/train"; 
testFolder <- "./UCI HAR Dataset/test"

# read activities data files
activity_labels <- read.table(file = paste(mainfolder, "/activity_labels.txt", 
                                          sep = ""), header = F)
names(activity_labels) <- c('code', 'activity')

# lowercase activity names
activity_labels$activity <- tolower(activity_labels$activity)


# read features data files and lowercase them
features <- tolower(read.table(file = paste(mainfolder, "/features.txt", 
                                    sep = ""), header = F)[,2])
#
# --- Objective 2 of the Project ---
# 2.  Extracts only the measurements on the mean and standard deviation 
#     for each measurement.
#
# creates a vector with indices of only mean() and std() belonging to a vector XYZ
features[grep("mag", features)] <- gsub("mag", "", features[grep("mag", features)])
features_selected <- grep("mean\\(\\)-X*|mean\\(\\)-Y*|mean\\(\\)-Z*|std\\(\\)-X*|std\\(\\)-Y*|std\\(\\)-Z*", features, value = FALSE)

# these transformations will be used to split columns later on
feature_names <- gsub("\\(\\)", "", features[features_selected])
feature_names <- gsub("^t", "time-", feature_names)
feature_names <- gsub("^time-body", "time-body-", feature_names)
feature_names <- gsub("^time-gravity", "time-gravity-", feature_names)
feature_names <- gsub("^f", "frequency-", feature_names)
feature_names <- gsub("^frequency-body", "frequency-body-", feature_names)
#feature_names <- gsub("mag-mean|mag-mean*", "-mean-mag", feature_names)
#feature_names <- gsub("mag-std", "-std-mag", feature_names)

# data from 'training' files dataset
file <- paste(trainFolder, "/subject_train.txt", sep = "")
subject_train <- read.table(file = file, header = F)
file <- paste(trainFolder, "/y_train.txt", sep = "")
y_train <- read.table(file = file, header = F)
file <- paste(trainFolder, "/X_train.txt", sep = "")
X_train <- read.table(file = file, header = F)

# selecting only columns: mean() and std()
train_data <- X_train[, features_selected]
# assigning proper names to columns
names(train_data) <- feature_names

# assign names to activity to merge with train_data
train_labels <- activity_labels[y_train[,1],][,2]

# adding column subject & activity
train <- cbind(subject_train, train_labels)
names(train) <- c('subject', 'activity')

# adding column training data
train <- cbind(train, train_data)
train <- tbl_df(train)

# data from 'test' files dataset
file <- paste(testFolder, "/subject_test.txt", sep = "")
subject_test <- read.table(file = file, header = F)
file <- paste(testFolder, "/y_test.txt", sep = "")
y_test <- read.table(file = file, header = F)
file <- paste(testFolder, "/X_test.txt", sep = "")
X_test <- read.table(file = file, header = F)

# selecting only columns: mean() and std()
test_data <- X_test[, features_selected]
# assigning proper names to columns
names(test_data) <- feature_names

# assign names to activity to merge with test_data
test_labels <- activity_labels[y_test[,1],][,2]

# adding column subject & activity
test <- cbind(subject_test, test_labels)
names(test) <- c('subject', 'activity')

# adding column test data
test <- cbind(test, test_data)
test <- tbl_df(test)

#
# --- Objective 1 of the Project ---
# 1.  Merges the training and the test sets to create one data set.
#
# merging training and testing data
pdata <- NULL
pdata <- bind_rows(train, test)

#write.table(pdata, file = paste(currdir, "/", "pdata-before-tidying.txt", 
                                sep = ""), row.name=FALSE)

#
# --- Objective 3 of the Project ---
# 3.  Uses descriptive activity names to name the activities in 
#     the data set
#
# creating descriptive names for data column values
domain <- c('time', 'frequency')
type <- c('body', 'gravity')
signal <- c('acc', 'accjerk', 'gyro', 'gyrojerk')
stat <- c('mean', 'stdev')
component <- c('x', 'y', 'z')

#
# --- Objective 4 of the Project ---
# 4.  Appropriately labels the data set with descriptive variable names.
#
# start process of tidying data
#
pdata <- pdata %>% 
            gather(measure, average, -subject, -activity) %>%
            separate(measure, c('domain', 'type', 'signal', 
                                       'stat', 'component'))

pdata$stat[which(pdata$stat == 'std')] <- 'stdev'
pdata$signal[which(pdata$signal == 'acc')] <- 'linear acceleration'
pdata$signal[which(pdata$signal == 'accjerk')] <- 'jerk signal lin accel'
pdata$signal[which(pdata$signal == 'gyro')] <- 'angular velocity'
pdata$signal[which(pdata$signal == 'gyrojerk')] <- 'jerk signal ang veloc'

#write.table(pdata, file = paste(currdir, "/", "pdata-after-tidying.txt", 
#                                sep = ""), row.name=FALSE)

#
# --- Objective 5 of the Project ---
# 5.  From the data set in step 4, creates a second, independent tidy 
#     data set with the average of each variable for each activity 
#     and each subject.
#
second <- pdata %>%
  select(subject, activity, domain, type, stat, component, average) %>%
  group_by(subject, activity) %>%
  summarize(meanvalue = mean(average)) %>%
  arrange(subject, activity) 

write.table(second, file = paste(currdir, "/", "secondds.txt", sep = ""), 
            row.name = FALSE)
#write.csv(second, file = paste(currdir, "/", "secondds.csv", sep = ""))

setwd(currdir)
 
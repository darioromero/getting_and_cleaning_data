# ReadMe.md

## Getting and Cleaning Data - Final Project - 2015-04-25

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, 
Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked 
to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is
to prepare tidy data that can be used for later analysis. We are going to be graded by our peers on a series of 
yes/no questions related to the project. We will be required to submit: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that we performed to 
   clean up the data called CodeBook.md. We should also include a README.md in the repo with the scripts. 
   This repo explains how all of the scripts work and how they are connected. 

Objectives required to accomplish during this project are: 

A.  Creates an R Script called run_analysis.R that should do the following:
    1.  Merges the training and the test sets to create one data set.
    2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
    3.  Uses descriptive activity names to name the activities in the data set
    4.  Appropriately labels the data set with descriptive variable names. 
    5.  From the data set in step 4, creates a second, independent tidy data set with the average 
        of each variable for each activity and each subject.
    
    Note: The script run_analysis.R must create two tidy data sets. One of them must 
          be uploaded to the repo and it will be generated in step 5 as described above.

B.  A link to a Github repository with the script for performing the analysis

C.  A Code Book that describes the variables, the data and any transformations or work performed to
    clean up the data.

D.  A ReadMe.md file (the one you are reading now) describing all steps in the run_analysis script and
    related and necessary information for your peer reviewers.

> Note: 
  1. Before running run_analysis.R script you must have permission for writing on the folder where
     you will save the script. As we all know, the script must create a txt file at the end of the
     analysis with the average per activity and per subject (person).
  2. This run_analysis.R script makes a download from the website of the required data to proceed with
     all necessary calculations.

## Description of run_analysis.R

R Script run_analysis.R (detailed description)
The script to create tidy data can be disglosed as to have 8 main chunks of tasks as described below:

1 - Data folder creation for saving files related to the project: folder 'data' that is created under
    the current working directory in R.

2 - Data downloading from the site: 
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    as per instructions given by the instructors.

3 - Selection of columns related to 'average' mean() and 'standard dev' std() values from the features.txt 
    file. The file features.txt has 561 columns with a huge number of variables. We decided to strictly 
    only select columns that ended up in 'mean()' and 'std()' and belonging to a vector. 
    So, having said that, I decided to NOT consider attributes related to magnitude, as those can be obtained
    later on using the Euclidean formula to calculate magnitude of the vector. So in summary, only has been
    considered mean()-X/Y/Z and std()-X/Y/Z for this project.
    
    Here below a schematic of the logic I followed to identify main attributes of the sample data:
    
    ![analysis](darioromero.github.com/getting_and_cleaning_data/images/analysis-tree.png

4 - Creation of the train data set along with the subject (for the training data set we have 21 people performing) 
    and the activity ("standing", "sitting", "laying", "walking", "walking_downstairs", "walking_upstairs") 
    related to the training data set.

5 - Same procedure for the test data (for the test data set we have 9 people performing) and the activity 
    related to the test data set.

6 - Binding rows train and test into a main data set called 'pdata'.

7 - Using chaining methods with gather and separate functions from tidyr and dplyr to create a tidy dataset.

8 - Using chaining commands with selec, group_by, summarize, and arrange to create second tidy dataset to 
    be written with write.table.

Note: File to be written with write.table is called secondds.txt (for second dataset)

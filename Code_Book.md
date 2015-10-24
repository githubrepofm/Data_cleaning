#Code Book

This code book includes information about the source data, the transformations performed after collecting the data and some information about the variables of the resulting data sets.

The source data was collected from the UCI Machine Learning Repository to complete an assignment for a Coursera course named Getting and Cleaning Data instructed by Jeff Leek. The assignment involved working with the data set and producing tidy data representation of the source data. Below is a list of the operations done to achieve the outputs.

Instructions:

Downloaded the data set
Unzipped the data set into my chosen working directory
# Loading Acitivty Labels and naming the columns
# Loading 561 features and naming the columns
# Determined Only features with mean

## Training data section
#Loading Subject data and naming the columns
#Loading activity records (y_train)
#Loading Feature records and Naming it
#Feature records with only mean columns
#Merging Activity Labels with the y_train to create activity records
#Create final table for Train data

## Test data section
#Loading Subject data and naming the colums
#Loading activity records (y_test)
#Loading Feature records and Naming it
#Feature records with only mean columns
#Merging Activity Labels with the y_test to create activity records
#Create final table for Test data

###Combine test and train data to create the final output
Produced "merged_tidy_data.txt" with the combined data frame as the first expected output

###Summarize the final data ouput by subject and activity

Created another data set using the data.table library to easily group the tidy data by subject and activity
Then applied the mean and standard deviation calculations across the groups
Produced "calculated_tidy_data.txt" as the second expected output
Please refer to run_analysis.R for implementation details.

Variables

subjectId: 1 to 30 each representing a participant in the study
activity: the activity that the subject was doing at the time of the measurement
tBodyAcc-mean-X
tBodyAcc-mean-Y
tBodyAcc-mean-Z
tBodyAcc-std-X
tBodyAcc-std-Y
tBodyAcc-std-Z
tGravityAcc-mean-X
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tGravityAcc-std-X
tGravityAcc-std-Y
tGravityAcc-std-Z
tBodyAccJerk-mean-X
tBodyAccJerk-mean-Y
tBodyAccJerk-mean-Z
tBodyAccJerk-std-X
tBodyAccJerk-std-Y
tBodyAccJerk-std-Z
tBodyGyro-mean-X
tBodyGyro-mean-Y
tBodyGyro-mean-Z
tBodyGyro-std-X
tBodyGyro-std-Y
tBodyGyro-std-Z
tBodyGyroJerk-mean-X
tBodyGyroJerk-mean-Y
tBodyGyroJerk-mean-Z
tBodyGyroJerk-std-X
tBodyGyroJerk-std-Y
tBodyGyroJerk-std-Z
tBodyAccMag-mean
tBodyAccMag-std
tGravityAccMag-mean
tGravityAccMag-std
tBodyAccJerkMag-mean
tBodyAccJerkMag-std
tBodyGyroMag-mean
tBodyGyroMag-std
tBodyGyroJerkMag-mean
tBodyGyroJerkMag-std
fBodyAcc-mean-X
fBodyAcc-mean-Y
fBodyAcc-mean-Z
fBodyAcc-std-X
fBodyAcc-std-Y
fBodyAcc-std-Z
fBodyAccJerk-mean-X
fBodyAccJerk-mean-Y
fBodyAccJerk-mean-Z
fBodyAccJerk-std-X
fBodyAccJerk-std-Y
fBodyAccJerk-std-Z
fBodyGyro-mean-X
fBodyGyro-mean-Y
fBodyGyro-mean-Z
fBodyGyro-std-X
fBodyGyro-std-Y
fBodyGyro-std-Z
fBodyAccMag-mean
fBodyAccMag-std
fBodyBodyAccJerkMag-mean
fBodyBodyAccJerkMag-std
fBodyBodyGyroMag-mean
fBodyBodyGyroMag-std
fBodyBodyGyroJerkMag-mean
fBodyBodyGyroJerkMag-std

##Loading the individual tables into R

# Loading Acitivty Labels and naming the columns
activity_labels<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
names(activity_labels)<-c("activity_id","activity_label")

# Loading 561 features and naming the columns
features<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
names(features)<-c("No","Feature Name")

#Only features with mean
mean_features<-grep("-mean\\(\\)|-std\\(\\)", features[,2])


### Training data section


#Loading Subject data and naming the columns
subject_train<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
names(subject_train)<-"Subject ID"

#Loading activity records (y_train)
y_train<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
names(y_train)<-"activity_id"

#Loading Feature records and Naming it
x_train<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/x_train.txt")
names(x_train)<-features[,2]

#Feature records with only mean columns
feature_record_train<-x_train[,mean_features]

#Merging Activity Labels with the y_train to create activity records
activity_record<-merge(y_train,activity_labels, by = "activity_id")

#Create final table for Train data
train_data<-cbind(subject_train,activity_record$activity_label,feature_record_train)


### Test data section

#Loading Subject data and naming the colums
subject_test<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
names(subject_test)<-"Subject ID"

#Loading activity records (y_test)
y_test<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
names(y_test)<-"activity_id"

#Loading Feature records and Naming it
x_test<-read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/x_test.txt")
names(x_test)<-features[,2]

#Feature records with only mean columns
feature_record_test<-x_test[,mean_features]

#Merging Activity Labels with the y_test to create activity records
activity_record<-merge(y_test,activity_labels, by = "activity_id")

#Create final table for Test data
test_data<-cbind(subject_test,activity_record$activity_label,feature_record_test)

# Combine test and train data to create the final output

final_data<-rbind(test_data,train_data)

write.table(final_data, "merged_tidy_data.txt")

#Summarize the final data ouput by subject and activity

library(data.table)
dataDT <- data.table(final_data)
calculatedData<- dataDT[, lapply(.SD, mean), by=c("Subject ID", "activity_record$activity_label")]
write.table(calculatedData, "calculated_tidy_data.txt", row.names = FALSE)

library(plyr)

## 1) Merge the training and the test sets to create one data set.

## 1) (a) Load datasets

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

## 1) (b) Merge train and test data sets :
features_x <- rbind(x_train, x_test)

activity_y <- rbind(y_train, y_test)

subject_all <- rbind(subject_train, subject_test)



## 2) Extract only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")

mean_and_std <- grep("(mean|std)\\(\\)", features[, 2])  ##choose

features_x <- features_x[, mean_and_std]  ##extract

names(features_x) <- features[mean_and_std, 2] ##variable names 4(a)



## 3) Use descriptive activity names to name the activities in the data set

activities <- read.table("activity_labels.txt")  ##read acticities

activity_y[, 1] <- activities[activity_y[, 1], 2]  ##change to descriptive activity names

names(activity_y) <- "activity"  ##variable names 4 (b)




## 4) Appropriately label the data set with descriptive variable names.

names(subject_all) <- "subject" ## variable names 4 (c)




## 1) (c) merge into a single dataset: cbind

all_data <- cbind(features_x, activity_y, subject_all)




## 5) create a second, independent tidy data set with the average of each variable for each activity and each subject.

averages_final <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averages_final, "tidy_avgdata.txt", row.name=FALSE)








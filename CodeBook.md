# TRANSFORMATIONS

The script `run_analysis.R` performs the 5 steps described in the course project.

* It reads the training and test sets and merges them together using `rbind()` (to merge files with same column entities) and `cbind()`(to get a single dataset)

* It extracts only the measurements on the mean and standard deviation for each measurement. Names for these are read and assigned from `feautures.txt`

* Descriptive activity names from `activity_labels.txt` are read and used to name the activities in the dataset.

* The dataset is then labeled with descriptive variable names, i.e. column names.

* A second independent dataset is then created with average measures for each (subject, activity) pair (using ddply). This dataset is written to `tidy_avgdata.txt` and uploaded. 

# VARIABLES

* `x_train`, `y_train`, `x_test`, `y_test`, `subject_train` and `subject_test` contain the data read from the downloaded files.

* `features_x`, `activity_y` and `subject_all` merge the previous datasets using `rbind()`. 

* `all_data` merges `features_x`, `activity_y` and `subject_all` in a single big dataset using cbind(). This is the data that is used to extract the second dataset.  

* `features` contains the correct names for the `features_x` dataset

* `mean_and_std` point to those feature names corresponding to mean or standard deviation.

* `activities` contains names for `activity_y`


* `averages_final` is the second independent dataset that is obtained by using `ddply()` on `all_data` . It contains the average of each variable for each activity and each subject. This dataset is then written on to `tidy_avgdata.txt`, the final tidy data. 


# DATA

The raw data set is converted into a tidy dataset and is written on to `tidy_avgdata.txt`.
The fields in the tidy dataset are as follows:

## Identifiers

* `subject` - The testID of subject
* `activity` - Activity performed when measurements were taken

## Measurements

* `tBodyAcc-mean()-X` 
* `tBodyAcc-mean()-Y` 
* `tBodyAcc-mean()-Z` 
* `tBodyAcc-std()-X` 
* `tBodyAcc-std()-Y` 
* `tBodyAcc-std()-Z` 
* `tGravityAcc-mean()-X` 
* `tGravityAcc-mean()-Y` 
* `tGravityAcc-mean()-Z` 
* `tGravityAcc-std()-X` 
* `tGravityAcc-std()-Y` 
* `tGravityAcc-std()-Z` 
* `tBodyAccJerk-mean()-X` 
* `tBodyAccJerk-mean()-Y`
* `tBodyAccJerk-mean()-Z`
* `tBodyAccJerk-std()-X`
* `tBodyAccJerk-std()-Y`
* `tBodyAccJerk-std()-Z`
* `tBodyGyro-mean()-X` 
* `tBodyGyro-mean()-Y` 
* `tBodyGyro-mean()-Z` 
* `tBodyGyro-std()-X` 
* `tBodyGyro-std()-Y` 
* `tBodyGyro-std()-Z` 
* `tBodyGyroJerk-mean()-X` 
* `tBodyGyroJerk-mean()-Y` 
* `tBodyGyroJerk-mean()-Z` 
* `tBodyGyroJerk-std()-X` 
* `tBodyGyroJerk-std()-Y` 
* `tBodyGyroJerk-std()-Z` 
* `tBodyAccMag-mean()` 
* `tBodyAccMag-std()` 
* `tGravityAccMag-mean()` 
* `tGravityAccMag-std()` 
* `tBodyAccJerkMag-mean()` 
* `tBodyAccJerkMag-std()` 
* `tBodyGyroMag-mean()` 
* `tBodyGyroMag-std()` 
* `tBodyGyroJerkMag-mean()` 
* `tBodyGyroJerkMag-std()` 
* `fBodyAcc-mean()-X` 
* `fBodyAcc-mean()-Y` 
* `fBodyAcc-mean()-Z` 
* `fBodyAcc-std()-X` 
* `fBodyAcc-std()-Y` 
* `fBodyAcc-std()-Z` 
* `fBodyAccJerk-mean()-X` 
* `fBodyAccJerk-mean()-Y` 
* `fBodyAccJerk-mean()-Z` 
* `fBodyAccJerk-std()-X` 
* `fBodyAccJerk-std()-Y` 
* `fBodyAccJerk-std()-Z` 
* `fBodyGyro-mean()-X` 
* `fBodyGyro-mean()-Y` 
* `fBodyGyro-mean()-Z` 
* `fBodyGyro-std()-X` 
* `fBodyGyro-std()-Y` 
* `fBodyGyro-std()-Z` 
* `fBodyAccMag-mean()` 
* `fBodyAccMag-std()` 
* `fBodyBodyAccJerkMag-mean()` 
* `fBodyBodyAccJerkMag-std()` 
* `fBodyBodyGyroMag-mean()` 
* `fBodyBodyGyroMag-std()` 
* `fBodyBodyGyroJerkMag-mean()` 
* `fBodyBodyGyroJerkMag-std()`


## Activity Labels

* `WALKING` (`1`): subject was walking
* `WALKING_UPSTAIRS` (`2`): subject was walking up a staircase
* `WALKING_DOWNSTAIRS` (`3`): subject was walking down a staircase
* `SITTING` (`4`): subject was sitting
* `STANDING` (`5`): subject was standing
* `LAYING` (`6`): subject was laying down





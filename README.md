Course Project - Getting and Cleaning Data
==========================================

This Repository contains files and scripts for the Course Project in Coursera's "Getting and cleaning Data"

The dataset is from : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
It is a Human Activity Recognition Using Smartphones Data Set that represents data collected from the accelerometers from the Samsung Galaxy S smartphone.

This project aims to convert the raw data into a tidy one by following a set of 5 steps.

## Files

* `run_analysis.R` : code to perform the analyses described in the 5 steps, i.e. to transform the raw dataset to a tidy one. But it requires that the code exists in the same folder as the uncompressed data from the above URL. 


* `CodeBook.md` : a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data


* `tidy_avgdata.txt` : tidy data obtained after step 5 in the course project. It contains an independent tidy data set with the average of each variable for each activity and each subject.

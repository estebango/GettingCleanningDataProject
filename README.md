Getting and Cleaning Data Project
=====================================

Esteban Gomez

This repo contains the results for the course project

Overview
-------------------------- 
The project shows the procedures to collect and produce a tidy data set that can be used for subsecuent analysis. 

A full description for obtained data can be foud at:

 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 
The source for this data project can be found at 

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
Project Summary
---------------
Create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set. 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set. 
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Instruccion to run this project
-------------------------------

1. Open the R script `run_analysis.r` using R.
2. Change the parameter of the `setwd` function. This function points to the working directory/folder (the folder where the R script file is saved).
3. Run the R script `run_analysis.r`. A file with the name tidyData.txt containing tidy data for this project will be saved in your working directory.

Aditional Information
---------------------
The code book called CodeBook.md has the related information about the variables.

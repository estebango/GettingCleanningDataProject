## Getting and Cleanning Data
## Esteban Gomez
## Final Project
############################

##1.Merges the training and the test sets to create one data set.

##working directory
setwd("/Users/Esteban/Documents/DATA SCIENCE/Getting Cleaning Data/project/UCI HAR Dataset")

## reading all the data
xTr<-read.table("./train/x_train.txt",header=FALSE)
yTr<-read.table("./train/y_train.txt",header=FALSE)
xTe<-read.table('./test/x_test.txt',header=FALSE)
yTe<-read.table('./test/y_test.txt',header=FALSE)
subTra<- read.table('./train/subject_train.txt',header=FALSE)
subTest <- read.table('./test/subject_test.txt',header=FALSE)
features<- read.table('./features.txt',header=FALSE)
labels <- read.table('./activity_labels.txt',header=FALSE)

# Assign column names to test data 
colnames(subTest)<-"subjectId"
colnames(xTe)<- features[,2] 
colnames(yTe)<-"activityId"
# mergin test files
Test<-cbind(yTe,subTest,xTe);

## giving same names to training the data files
colnames(xTr)<-features[,2] 
colnames(yTr)<-"activityId"
colnames(labels)<-c('activityId','activityType')
colnames(subTra)<-"subjectId"
##mergin training files
Train<-cbind(yTr,subTra,xTr)

## final data set
Data<-rbind(Train,Test)


##2.Extracts only the measurements on the mean and standard deviation for each measurement. 
msData <- Data[,c(1,2,grep("mean", colnames(Data)), grep("std", colnames(Data)))]

##3.Uses descriptive activity names to name the activities in the data set
desData<- merge(msData,labels,by='activityId',all=TRUE)

## 4. Appropriately labels the data set with descriptive variable names. 
colnames<-colnames(desData)
fData<-desData
names(fData)<-gsub("-|\\()", "", colnames)

##5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
notype<-fData[,names(fData)!="activityType"]
subject<-fData$subjectId
activity<-fData$activityId
tidyData<-aggregate(notype,by=list(activity,subject),mean)

write.table(tidyData, file = "./tidyData.txt", row.names=FALSE)


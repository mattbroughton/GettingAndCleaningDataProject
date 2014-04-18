library(reshape2)
source("readActivity.R")
source("extractMeanAndStdev.R")

#Read in the data, extract the mean and standard devation quantities
dataIndicesandNames<-extractMeanAndStdev("features.txt")

#Read in the training and test activities.
testActivities<-readActivity("y_test.txt")
trainActivities<-readActivity("y_train.txt")

#Read in the subject data
testSubject<-read.table("subject_test.txt")
trainSubject<-read.table("subject_train.txt")

#Read in the training and test measurements.
testData<-read.table("X_test.txt")
trainData<-read.table("X_train.txt")

#Bind the activity data to the data frame. Also bind the name and
#index to the ones we will extract later
testData<-cbind(testActivities,testData)
trainData<-cbind(trainActivities,trainData)
newRow<-c(0,"activity")
dataIndicesandNames<-rbind(newRow,dataIndicesandNames)
dataIndicesandNames$desiredIndices<-as.numeric(dataIndicesandNames$desiredIndices)+1


#Bind the subject data. Also bind the name
#and index to the ones we want to extract
testData<-cbind(testSubject,testData)
trainData<-cbind(trainSubject,trainData)
newRow<-c(0,"subject")
dataIndicesandNames<-rbind(newRow,dataIndicesandNames)
dataIndicesandNames$desiredIndices<-as.numeric(dataIndicesandNames$desiredIndices)+1

#Exctract the desired measurements from the data
testData<-testData[,dataIndicesandNames$desiredIndices]
trainData<-trainData[,dataIndicesandNames$desiredIndices]

#Set the column names of the data frames
colnames(testData)<-dataIndicesandNames$cleanNames
colnames(trainData)<-dataIndicesandNames$cleanNames

#append the training data to the test data
allData<-rbind(testData,trainData)

#melt the data by subject and activity
meltData<-melt(allData,id=c("subject","activity"))

#recast the data and average by subject and activity
tidyData<-dcast(meltData,subject+activity~variable,mean)

#write the output file
write.csv(tidyData,file="tidyData.csv")
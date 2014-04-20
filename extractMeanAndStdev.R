extractMeanAndStdev<-function(nameDoc){
  #Input: nameDoc == file you want to read in (character)
  #Returns: Data Frame with two columns
  #Column 1: Index == index of the feature (numeric)
  #Column 2: Name == Name of the feature (integer)
  
  #Read the features file into a data frame
  features<-read.table(nameDoc)
  
  #force the labels to be characters
  features[,2]<-as.character(features[,2])
  
  #Find indices all features that have "mean" or "std" in their names
  desiredIndices<-grep("mean\\(\\)|std\\(\\)",features[,2])
  
  #extract the names
  uncleanNames<-features[desiredIndices,2]
  
  
  #If the name starts with "t", replace "t" with "TimeDomain"
  uncleanNames[grep("^t",uncleanNames)]<-sub("t","TimeDomain",uncleanNames[grep("^t",uncleanNames)])
  
  #If the name starts with "f" replace "f" with "FrequencyDomain
  uncleanNames[grep("^f",uncleanNames)]<-sub("f","FrequencyDomain",uncleanNames[grep("^f",uncleanNames)])
  
  #Change "Acc" to "Acceleration"
  uncleanNames[grep("Acc",uncleanNames)]<-sub("Acc","Acceleration",uncleanNames[grep("Acc",uncleanNames)])
  
  #Change "Mag" to "Magnitude
  uncleanNames[grep("Mag",uncleanNames)]<-sub("Mag","Magnitude",uncleanNames[grep("Mag",uncleanNames)])
  
  #Change "mean" to "Mean"
  uncleanNames[grep("mean()",uncleanNames)]<-sub("mean()","Mean",uncleanNames[grep("mean()",uncleanNames)])
  
  #Change "std" to "StandardDeviation"
  uncleanNames[grep("std()",uncleanNames)]<-sub("std()","StandardDeviation",uncleanNames[grep("std()",uncleanNames)])
  
  #Remove all "-"
  uncleanNames[grep("-",uncleanNames)]<-gsub("-","",uncleanNames[grep("-",uncleanNames)])
  
  #Remove all "()"
  uncleanNames[grep("\\(\\)",uncleanNames)]<-gsub("\\(\\)","",uncleanNames[grep("\\(\\)",uncleanNames)])
  
  #Change "MeanFreq" to "MeanFrequency"
  uncleanNames[grep("MeanFreq",uncleanNames)]<-gsub("MeanFreq","MeanFrequency",uncleanNames[grep("MeanFreq",uncleanNames)])
  
  #Change "Gyro" to "AngularVelocity"
  uncleanNames[grep("Gyro",uncleanNames)]<-gsub("Gyro","AngularVelocity",uncleanNames[grep("Gyro",uncleanNames)])
  
  cleanNames<-as.character(uncleanNames)
  #Create the output data frame
  dataFrame<-data.frame(desiredIndices,cleanNames)
  dataFrame$cleanNames<-as.character(dataFrame$cleanNames)
  dataFrame
}

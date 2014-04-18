readActivity<-function(activityFile){
  #activityFile: location of the file you want to read in
  #Returns: Data frame with the activities descriptively named
  activityData<-read.table(activityFile)
  activityLabels<-c("walking","walkingUpstairs","walkingDownstairs","sitting","standing","laying")
  
  #Loop over all numbers
  for (i in 1:length(activityLabels)){
    #Replace the number with the appropriate labels
    activityData$V1[activityData$V1==i]<-activityLabels[i]   
  }
  
  activityData
}
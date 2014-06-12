## Read data sets
# read train data
subjTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
# read test data
subjTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
# read features data (common to test and train)
features <- read.table("UCI HAR Dataset/features.txt")

## Merge training and test datasets
accGyrDat <- rbind(xTrain, xTest) # Combine accelerometer and gyroscope data
## Label the dataset columns with descriptive labels. New labels are based on feature names provided in features_info.txt -- all letters converted to lower case, only alphanumeric characters retained in labels
featName <- tolower(features[,2]) # All lower case
featName <- gsub("[^a-zA-z0-9]","",featName) # Make all alphanumeric
colnames(accGyrDat) <- featName # Rename columns
## Extract mean and std measurements
featIdx <- grep("mean|std", featName) 
accGyrDat <- cbind(accGyrDat[featIdx])

## Merge train and test data activities. Uses descriptive activity names for activities instead of numbers. Rename activity column to "activity"
activity <- rbind(yTrain, yTest)
activity$V1 <- as.factor(activity$V1)
levels(activity$V1) <- c("walking", "walking up", "walking down", "sitting", "standing", "laying")
names(activity)[1] <- "activity" # Appropriately labels the data set with descriptive variable names.

## Merge train and test subjects date. Rename subject column to "subjects"
subject <- rbind(subjTrain, subjTest)
names(subject)[1] <- "subject" # Rename column to "subject"

## Merge subject, activity and accGyrDat columns
data <- cbind(subject,activity,accGyrDat)

## Create tidy data set with average of each variable/column for each activity and each subject. 
DF2 <- data.frame() # Initialize data frame


actNames <- levels(data$activity)
for (x in 1:30) {
  DF1 <- data.frame()
  
  for (i in actNames) {
    tempGrp <- subset(data, subject == x & activity == i)
    tempGrpMean <- colMeans(tempGrp[,3:88])
    DF1 <- rbind(DF1,tempGrpMean)
  }
  c <- cbind(x,actNames,DF1)
  colnames(c) <- names(data)
  DF2 <- rbind(DF2,c)
}
colnames(c) <- names(data) # Rename data frame columns

write.table(DF2, file = "tidy_data_set.txt") # Save tidy data set as a text file
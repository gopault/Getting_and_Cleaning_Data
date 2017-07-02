## The two starting data sets (xtrain2 and xtest2) were created
## by using the features.txt file to supply column names for 
## the raw data, then cbinding each row of 561 observations 
## to both the corresponding activity and test subject.

## Ensure the dplyr package is loaded.

library(dplyr)

## The features.txt file is read in. A character vector
## containing only the feature descriptions is defined.

features <- read.table("./features.txt")
featurecolnames <- as.character(features$V2)

## The test observations are read in and given the column
## names supplied in the features.txt file.

xtest <- read.table("./test/X_test.txt")
colnames(xtrain) <- featurecolnames

## The test subject identifiers are read in and given
## a descriptive column name.

subjecttest <- read.table("./test/subject_test.txt")
colnames(subjecttest) <- c("subject")

## The activity codes are read in and given a descriptive
## column name.

activitytest <- read.table("./test/y_test.txt")
colnames(activitytest) <- c("activity")

## The test data is bound into a new data frame which contains
## test subject identifiers, activity codes, and
## observation data.

xtest2 <- cbind(subjecttest, activitytest, xtest)

## The above steps are repeated for the training data to
## create a new data frame with training subjects, activity
## codes, and observation data.

xtrain <- read.table("./train/X_train.txt")
colnames(xtrain) <- featurecolnames

subjecttrain <- read.table("./train/subject_train.txt")
colnames(subjecttrain) <- c("subject")

activitytrain <- read.table("./train/y_train.txt")
colnames(activitytrain) <- c("activity")

xtrain2 <- cbind(subjecttrain, activitytrain, xtrain)

## Merge the training data set (xtrain2) and the test data
## set (xtest2) to create one data set.

hardata <- rbind (xtrain2, xtest2)

## Extract only the measurements on means ("mean()") and 
## standard deviations ("std()"). A new dataframe limited to 
## these observations (harlim) is created. NB: Ensure 
## "subject" and "activity" columns are kept.

colsofint <- grep("subject|activity|(mean|std)\\(\\)", 
                  names(hardata))

harlim <- hardata[, colsofint]

## Use descriptive activity names to name the activities in
## the data set. 

## The activity codes are defined as follows in the 
## activity_labels.txt file: 1 WALKING; 2 WALKING_UPSTAIRS;
## 3 WALKING_DOWNSTAIRS; 4 SITTING; 5 STANDING; 6 LAYING

## Note that the "activity" column will need to be
## converted from integers to factors.

actlabels <- read.table("./activity_labels.txt")
actlabelnames <- actlabels$V2

harlim$activity = factor(harlim$activity, 
                         levels = c(1,2,3,4,5,6), 
                         labels = actlabelnames)

## Appropriately labels the data set with descriptive
## variable names. Remove non-alphanumeric characters.
## Keep format of column names consistent.
## See CodeBook.md for full variable names.

names(harlim) <- gsub("\\(\\)", "", names(harlim))
names(harlim) <- gsub("-", "", names(harlim))
names(harlim) <- gsub("mean", "Mean", names(harlim))
names(harlim) <- gsub("std", "StdDev", names(harlim))
names(harlim) <- gsub("^t", "Time", names(harlim))
names(harlim) <- gsub("^f", "Freq", names(harlim))


## Creates a second, independent tidy data set with the 
## average of each variable for each activity and each
## subject.

## Ensure the reshape2 package is loaded.

library(reshape2)

## Melt dataframe to denote "subject" and "activity" as
## ID variables, and all other columns as measure variables.

harmelt <- melt(harlim, id = c("subject", "activity"))

## Recast the data frame to show the mean for each variable
## for each activity and subject.

hartidy <- dcast(harmelt, subject + activity ~ variable, mean)

## Output the resulting tidy data file using the write.table() 
## function with argument row.name=FALSE, per submission 
## instructions.

write.table(hartidy, file = "./tidydata.txt", 
            row.names = FALSE)



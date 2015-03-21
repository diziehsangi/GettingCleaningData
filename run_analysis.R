#read the features file which contains all feature names
featurenames <- read.table("UCI HAR Dataset/features.txt")

#read in the trainingSet files
trainingset <- read.table("UCI HAR Dataset/train/X_train.txt")
colnames(trainingset) <- featurenames[,2]

#read the subjects file for the training set and set the column name properly
subjectstrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(subjectstrain) <- "subject"

#read the activity file for the training set and set the column name properly
activitytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
colnames(activitytrain) <- "activity"

#read the training set and set all the column names from the feature data frame
testingset <- read.table("UCI HAR Dataset/test/X_test.txt")
colnames(testingset) <- featurenames[,2]

#Repeat same steps for the testing set
subjectstest <- read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(subjectstest) <- "subject"
activitytest <- read.table("UCI HAR Dataset/test/y_test.txt")
colnames(activitytest) <- "activity"
trainingset <- cbind(trainingset, activitytrain, subjectstrain)
testingset <- cbind(testingset, activitytest, subjectstest)

#merge them into one dataframe
dataset <- rbind(trainingset, testingset)

#selecting only the columns that have mean or std in their column name
dataset <- dataset[, grep("mean|std|activity|subject", colnames(dataset))]

#reading activity label information and cross reference and append them to the dataset
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
dataset$activitylabel <- factor(dataset$activity, levels=1:6, labels=activity_labels[[2]])

#group by activity and subject
dataset_by_activity_subject <- group_by(dataset, activitylabel, subject)

#summarize each column and take the mean.
tidydataset <- summarise_each(dataset_by_activity_subject, funs(mean))

#write data to a table for submission
write.table(tidydataset, file="tidydataset.txt", row.names=FALSE)


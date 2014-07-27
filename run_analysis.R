# Quiz 1 question 1 included a code book

setwd("UCI HAR Dataset")

# Read Test and Train data files and put them into individual R variables
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

# Merge Test data horizontally and Train data horizontally
data_test <- cbind(subject_test, y_test, x_test)
data_train <- cbind(subject_train, y_train, x_train)

# Merge Test and Train data vertically so that all data is in one table
data_all <- rbind(data_test, data_train)

# Name the variables using the information from the files we are given
features_names <- read.table("features.txt")
names(data_all) <- c("SubjectID","ActivityID", as.vector(features_names$V2))

# Read Activity Labels data and use it to create Activity (name)
# Remove Activity ID as we have user friendly Activity
activity_labels <- read.table("activity_labels.txt", col.names=c("ActivityID","Activity"))
data_all <- merge(data_all[,], activity_labels, sort=FALSE)
data_all$ActivityID <- NULL

# Keep measure columns that are about mean (not menFreq) or standard deviation. 
# Also the SubjectID and Activity columns (reverse their order)
keep_colnames <- grep("*SubjectID|Activity|mean\\(|std*",colnames(data_all))
data_keep <- data_all[,keep_colnames]
data_keep <- data_keep[c(2,1,3:ncol(data_keep))]

# Create user friendly columnn names for the measures by:
#    Replacing initial "t" with "time-"
#    Replacing initital "f" with "fft-"
#    Replacing "BodyBody" with "Body"
#    Replacing "Acc" with "Accelerometer"
#    Replacing "Gyro" with "Gyroscope"
#    Replacing "Mag" with "Magnitude"
#    Removing "(", ")" and ","
names(data_keep) <- gsub(",|\\(|\\)", "", gsub("^t", "time-", gsub("^f", "fft-", gsub("BodyBody", "Body", gsub("Acc", "Accelerometer", gsub("Gyro", "Gyroscope", gsub("Mag","Magnitude", names(data_keep))))))))

# Create tidy data set by aggregating (using mean) by SubjectID and Activity
data_tidy <- aggregate(. ~ SubjectID + Activity, data_keep, FUN=mean, na.action=na.pass, na.rm=TRUE)

# Output file to be uploaded for the assignemnt
write.table(data_tidy,"../data_tidy.txt",sep=",",row.names=FALSE)
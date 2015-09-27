## This script cleans up unzipped data downloaded from:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## Data is originally from "Human Activity Recognition Using Smartphones Dataset"

library (dplyr)

# read activity label data
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE, stringsAsFactors = FALSE)

# read data in test and train folders
filePrefixes <- c("subject", "X", "Y")
filePostfixes <- c("test", "train")

for (i in 1:length(filePostfixes)) {
        for (j in 1:length(filePrefixes)){
                filename <- paste(sep="", filePrefixes[[j]], "_", filePostfixes[[i]], ".txt")
                filepath <- paste(sep="", "./UCI HAR Dataset/", filePostfixes[[i]], "/",filename)
                varname <- paste(sep="", filePrefixes[[j]], "_", filePostfixes[[i]])
                assign(varname, read.table(filepath, header=FALSE)) 
        }
}

# combine test and train data of the same type 
subject_all <- rbind(subject_test, subject_train)
X_all <- rbind(X_test, X_train)
Y_all <- rbind(Y_test, Y_train)

# give column names
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE, stringsAsFactors=FALSE)
colnames(subject_all) <- c("subject")
colnames(X_all) <- features[,2]
colnames(Y_all) <- c("activity_code")

# add column with activity label to Y_all
Y_all$activity <- sapply(Y_all$activity_code, function (x) activity_labels[x,2])

# only keep X columns with 'mean' or 'std' at end of name, don't include 'meanFreq' columns
keeps <- c()
for (f in features[,2]){
        if ((grepl("mean()", f) | grepl("std()", f)) & !(grepl("meanFreq()", f))) {
                keeps <- c(keeps, f)
        }    
}
X_keeps <- X_all[keeps]

#combine data for each subject 
cleandata <- cbind(subject_all, Y_all, X_keeps)

#remove activity label column
drops <- c("activity_code")
cleandata <- cleandata[,!(names(cleandata) %in% drops)]

#make tidy data set with avg of each X variable for each activity and for each subject
#columns will be: subject, activity, and then an average for each variable
tidy <- cleandata %>% group_by(subject, activity) %>% summarise_each(funs(mean))

#rename columns so that data columns have '-avg' at end
tidyNames <- names(tidy)
for (n in 3:length(tidyNames)){tidyNames[n] <- paste(sep="", tidyNames[n], "-avg")}
colnames(tidy) <- tidyNames

#save text file with tidy data
<<<<<<< HEAD
write.table(tidy, "HAR-Smartphone-tidy.txt", row.names = FALSE)
=======
write.table(tidy, "HAR-Smartphone-tidy.txt", row.names = FALSE)
>>>>>>> 88af6d6219a51e2c53c9850be16392d183119076

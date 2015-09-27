Code Book for HAR-Smartphone-tidy.txt
=====================================

This is a description of tidy dataset HAR-Smartphone-tidy.txt, which came from the Human Activity Recognition Using Smartphones Dataset and was modified as specified below.   

Tidy dataset dimensions: 180 rows x 68 columns

###Tidy dataset variable descriptions  
**subject (column 1)**  
        Description: ID number of each subject for whom smartphone data was recorded  
        Format: integer from 1 to 30  

**activity (column 2)**  
        Description: name of activity that subject was engaged in while recording smartphone
        data  
        Format: one of the following 6 activity names  
        
        LAYING  
        SITTING  
        STANDING  
        WALKING  
        WALKING_DOWNSTAIRS  
        WALKING_UPSTAIRS 
        
**Averages of smartphone measurements recorded for each subject and activity 
(columns 3-68)**  
Description:   
        * Each column gives the average of either the
                mean of a variable or the standard deviation (std) of a variable that was recorded for each subject and activity.  
        * The first character of the variable name indicates whether that
                variable is in the time(t) or frequency (f) domain.  
        * The letters X, Y, and Z in the variable names indicated whether 
                the measured value is in the X, Y, or Z direction.  
        Format: 
        
        column 3: tBodyAcc-mean()-X-avg:   
        column 4: tBodyAcc-mean()-Y-avg   
        column 5: tBodyAcc-mean()-Z-avg   
        column 6: tBodyAcc-std()-X-avg  
        column 7: tBodyAcc-std()-Y-avg  
        column 8: tBodyAcc-std()-Z-avg  
        column 9: tGravityAcc-mean()-X-avg  
        column 10: tGravityAcc-mean()-Y-avg    
        column 11: tGravityAcc-mean()-Z-avg  
        column 12: tGravityAcc-std()-X-avg   
        column 13: tGravityAcc-std()-Y-avg  
        column 14: tGravityAcc-std()-Z-avg  
        column 15: tBodyAccJerk-mean()-X-avg  
        column 16: tBodyAccJerk-mean()-Y-avg  
        column 17: tBodyAccJerk-mean()-Z-avg  
        column 18: tBodyAccJerk-std()-X-avg  
        column 19: tBodyAccJerk-std()-Y-avg  
        column 20: tBodyAccJerk-std()-Z-avg  
        column 21: tBodyGyro-mean()-X-avg  
        column 22: tBodyGyro-mean()-Y-avg  
        column 23: tBodyGyro-mean()-Z-avg  
        column 24: tBodyGyro-std()-X-avg  
        column 25: tBodyGyro-std()-Y-avg  
        column 26: tBodyGyro-std()-Z-avg  
        column 27: tBodyGyroJerk-mean()-X-avg  
        column 28: tBodyGyroJerk-mean()-Y-avg  
        column 29: tBodyGyroJerk-mean()-Z-avg  
        column 30: tBodyGyroJerk-std()-X-avg  
        column 31: tBodyGyroJerk-std()-Y-avg  
        column 32: tBodyGyroJerk-std()-Z-avg  
        column 33: tBodyAccMag-mean()-avg  
        column 34: tBodyAccMag-std()-avg  
        column 35: tGravityAccMag-mean()-avg  
        column 36: tGravityAccMag-std()-avg  
        column 37: tBodyAccJerkMag-mean()-avg  
        column 38: tBodyAccJerkMag-std()-avg  
        column 39: tBodyGyroMag-mean()-avg  
        column 40: tBodyGyroMag-std()-avg  
        column 41: tBodyGyroJerkMag-mean()-avg
        column 42: tBodyGyroJerkMag-std()-avg
        column 43: fBodyAcc-mean()-X-avg
        column 44: fBodyAcc-mean()-Y-avg 
        column 45: fBodyAcc-mean()-Z-avg
        column 46: fBodyAcc-std()-X-avg
        column 47: fBodyAcc-std()-Y-avg
        column 48: fBodyAcc-std()-Z-avg
        column 49: fBodyAccJerk-mean()-X-avg
        column 50: fBodyAccJerk-mean()-Y-avg
        column 51: fBodyAccJerk-mean()-Z-avg
        column 52: fBodyAccJerk-std()-X-avg
        column 53: fBodyAccJerk-std()-Y-avg
        column 54: fBodyAccJerk-std()-Z-avg
        column 55: fBodyGyro-mean()-X-avg
        column 56: fBodyGyro-mean()-Y-avg
        column 57: fBodyGyro-mean()-Z-avg
        column 58: fBodyGyro-std()-X-avg
        column 59: fBodyGyro-std()-Y-avg
        column 60: fBodyGyro-std()-Z-avg
        column 61: fBodyAccMag-mean()-avg
        column 62: fBodyAccMag-std()-avg
        column 63: fBodyBodyAccJerkMag-mean()-avg
        column 64: fBodyBodyAccJerkMag-std()-avg
        column 65: fBodyBodyGyroMag-mean()-avg
        column 66: fBodyBodyGyroMag-std()-avg
        column 67: fBodyBodyGyroJerkMag-mean()-avg
        column 68: fBodyBodyGyroJerkMag-std()-avg

###Details about data preparation

Raw data was downloaded from the Human Activity Recognition Using Smartphones Dataset: 
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    
Testing and training datasets for each type of data (subject_test, X, Y) were combined.  

Variable names were found in file "./UCI HAR Dataset/features.txt" and used to label columns of X data. 
All X data columns with names that did not contain "mean()" or "std()" were dropped.  

Activity codes were found in file "./UCI HAR Dataset/activity_labels.txt" and used to label Y data.  

Subject data, X data, and Y data were combined for each subject. 

This combined data was grouped by subject and activity code, and a new table with the mean of each column for subject/activity code was made. 

Column names were modified to include '-avg' at the end and tidy file was saved as 'HAR-Smartphone-tidy.txt'.




    
    
    
    


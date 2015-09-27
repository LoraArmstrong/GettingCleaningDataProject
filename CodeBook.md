---
title: "Code Book for HAR-Smartphone-tidy.txt"
author: "Lora Armstrong"
date: "21 June 2015"
output: html_document
---

Description of tidy dataset HAR-Smartphone-tidy.txt, compiled from the Human Activity Recognition Using Smartphones Dataset.   

Tidy dataset dimensions: 180 rows x 68 columns

Tidy dataset variable descriptions:  

* **subject (column 1)**  
        Description: ID number of each subject for whom smartphone data was recorded  
        Format: integer from 1 to 30  

* **activity (column 2)**  
        Description: name of activity that subject was engaged in while recording smartphone data:  
        Format: one of the following 6 activity names  
        
        LAYING  
        SITTING  
        STANDING  
        WALKING  
        WALKING_DOWNSTAIRS  
        WALKING_UPSTAIRS  

* **averages of smartphone measurements recorded for each subject and activity (columns 3-68) **  
        
        column 3: tBodyAcc-mean()-X-avg   
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
        column 41: tBodyGyroJerkMag-mean()-avg (dbl), tBodyGyroJerkMag-std()-avg (dbl), fBodyAcc-mean()-X-avg (dbl),
  fBodyAcc-mean()-Y-avg (dbl), fBodyAcc-mean()-Z-avg (dbl), fBodyAcc-std()-X-avg (dbl), fBodyAcc-std()-Y-avg (dbl),
  fBodyAcc-std()-Z-avg (dbl), fBodyAccJerk-mean()-X-avg (dbl), fBodyAccJerk-mean()-Y-avg (dbl), fBodyAccJerk-mean()-Z-avg
  (dbl), fBodyAccJerk-std()-X-avg (dbl), fBodyAccJerk-std()-Y-avg (dbl), fBodyAccJerk-std()-Z-avg (dbl), fBodyGyro-mean()-X-avg
  (dbl), fBodyGyro-mean()-Y-avg (dbl), fBodyGyro-mean()-Z-avg (dbl), fBodyGyro-std()-X-avg (dbl), fBodyGyro-std()-Y-avg (dbl),
  fBodyGyro-std()-Z-avg (dbl), fBodyAccMag-mean()-avg (dbl), fBodyAccMag-std()-avg (dbl), fBodyBodyAccJerkMag-mean()-avg (dbl),
  fBodyBodyAccJerkMag-std()-avg (dbl), fBodyBodyGyroMag-mean()-avg (dbl), fBodyBodyGyroMag-std()-avg (dbl),
  fBodyBodyGyroJerkMag-mean()-avg (dbl), fBodyBodyGyroJerkMag-std()-avg (dbl)
        


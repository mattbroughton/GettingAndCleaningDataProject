README
-------------------------------
This directory contains the following R scripts:

-- **run_analysis.R**: This is the main R script to tidy up the data set. It does the following:
  
  1. Reads the feature into a data frame. Only those measurements that were a mean or a standard deviation were kept. The names of the variables were made more descriptive.
  2. Reads "y_test.txt" and "y_train.txt". The activity numbers were changed to descriptive activity names.
  3. Reads the files containing the measurement data ("X_test.txt" and "X_train.txt") and the subject data (subject_test.txt" and "subject_train.txt") into data frames.
  4. Adds columns representing the subject and activity data for the traning and test sets to the measurement data using the cbind function.
  5. Combines the measurements of the training and test sets.
  6. Creates a data frame containing the mean for each variable for each subject and each activty.
  7. Writes the data frame created in step 6 to the file "tidyData.csv".
  
To run successfully, the user must have the reshape2 R library installed. The script calls the following two scripts.

-- **extractMeanAndStdev.R**: This script performs step 1 listed above.

-- **readActivity.R** This script performs step 2 listed above. 

This directory also contains the following files, all of which are needed by run_analysis.R.
  
1. features.txt
2. features_info.txt
3. subject_test.txt
4. subject_train.txt
5. X_test.txt
6. y_test.txt
7. X_train.txt
8. y_train.txt


  			
					
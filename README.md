# Course project description
The following steps are description of 'run_analysis.R' which is the final course project.

1. Starting with loading the library which is 'dplyr' library.
2. Load data sets into variables that we are gonna use with 'read.table()' (It's assume that the folder './UCI HAR Dataset' has been created in this working directory).
3. Merges the training and the test sets to create one data set that contain 'subject', 'activity_label', 'x_data' and 'y_data' sets using 'rbind()' and 'cbind()' assign to variable 'm_data'.
4. Extracts only the measurements on the mean and standard deviation which use 'grep()' to find the column names that contain 'mean' and 'std', and get 'ext_data' variable.
5. Uses descriptive activity names from "act_label" to name the activities in 'ext_data'.
6. Remove some unuse variables.
7. Check column names and change the second column name to 'activity' to prevent confusion.
8. Tidy data set with the average of each variable for each activity and each subject. Then, export it as the new data set 'TidyData.txt'.

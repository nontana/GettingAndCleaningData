library(dplyr)
############## Load data sets ############## 
ft <- read.table("./UCI HAR Dataset/features.txt", 
                 header = FALSE, col.names = c("idx", "features"))
# Load test data sets
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE
                     , col.names = ft[,2])
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE
                     , col.names = c("label"))
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                           header = FALSE, col.names = c("subject"))
## Load train data sets
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE
                      , col.names = ft[,2])
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE
                      , col.names = c("label"))
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                           header = FALSE, col.names = c("subject"))
## Load activity labels data set
act_label <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE
                        , col.names = c("class","activity"))

### 1. Merges the training and the test sets to create one data set.
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)
m_data <- cbind(subject_data, y_data, x_data)


### 2. Extracts only the measurements on the mean and standard deviation 
### for each measurement.
con <- grep("mean|std", names(m_data))
ext_data <- m_data[, con]
ext_data <- cbind(subject_data, y_data, ext_data)

### 3. Uses descriptive activity names to name the activities in 
### the data set.
ext_data$label <- act_label[ext_data$label,2]
## Remove un-use variables
rm(list = c('x_test','x_train', 'y_test','y_train', 
            'subject_test','subject_train','x_data','y_data',
            'subject_data', 'con','act_label','ft','m_data'))
### 4. Appropriately labels the data set with descriptive variable names.
# Previously, the variable names have changed in the step of loading data.
# Most of the variables are clearly descibe their values in time domain (t)
# or frequency domain (f). Then, I will just change the second column name to 
# match the question
colnames(ext_data)[2] <- c("activity")
### 5. From the data set in step 4, creates a second, independent tidy
### data set with the average of each variable for each activity and
### each subject.
tidy_data <- ext_data %>%
              group_by(subject, activity) %>%
              summarise_all(mean)
## Export tidy data out
write.table(tidy_data, "TidyData.txt")


# Code book
This code book is used for explain the `TidyData.txt` which is originally created from `Human Activity Recognition Using Smartphone Dataset Version 1.0`.

You can download the original data from this link

`http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones`

The tidy datasets contain 180 observables and 81 variables.
## Identities and Activities
The first column represent `subject` from number 1 to 30, which dedicate the 30 volunteers within an age bracket of 19-48 years.
The second column represent `activity` which is divided into 6 types accroding to the labels in original datasets.

1.`WALKING`

2.`WALKING_UPSTAIRS`

3.`WALKING_DOWNSTAIRS`

4.`SITTING`

5.`STANDING`

6.`LAYING`

## Measurement
The measurements are the other variables from column 3rd to 81st that include the `mean` and `standard deviation` of the following parameters

1. The body and gravity acceleration signals (`tBodyAcc-XYZ` and `tGravityAcc-XYZ`)
2. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (`tBodyAccJerk-XYZ` and `tBodyGyroJerk-XYZ`) 
3. The magnitude of these three-dimensional signals were calculated using the Euclidean norm (`tBodyAccMag`, `tGravityAccMag`, `tBodyAccJerkMag`, `tBodyGyroMag`, `tBodyGyroJerkMag`).
4. Another variables with the same name as above variables, but repalce `t` with `f`

The characters `t` and `f` infront of each variable represent the `time domain` and `frequency domain` using Fast Fourier Transform (FFT). 

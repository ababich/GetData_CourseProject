## Code Book

For the provided ```UCI HAR Dataset``` vars are set from ```run_analysis.R```
* Please, refer to [README](README.md) for details
* Please, refer to [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for full details on data columns
* Original data sourse from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### Tidy Mean

A data.table named `tidy_mean` has next columns.  All units are from the original data set. A file named ```tidy_mean.txt``` is created by ```run_analysis.R``` script.

| column       | description                                                  | type    |
| ------------ | ------------------------------------------------------------ | ------- |
| subject      | Identifier of the subject                                    | integer |
| activity     | Label of the activity                                        | factor  |
| mean_samples | Mean of variables by `subject` + `activity` provided in tidy | numeric |

### Tidy

A data.table named `tidy` has next columns.  All units are from the original data set. A file named ```tidy.txt``` is created by ```run_analysis.R``` script.

| Column                       | Original Name               |
| ---------------------------- | --------------------------- |
| activity                     |                             |
| subject                      |                             |
| time_bodyAcc_mean_X          | tBodyAcc-mean()-X           |
| time_bodyAcc_mean_Y          | tBodyAcc-mean()-Y           |
| time_bodyAcc_mean_Z          | tBodyAcc-mean()-Z           |
| time_bodyAcc_std_X           | tBodyAcc-std()-X            |
| time_bodyAcc_std_Y           | tBodyAcc-std()-Y            |
| time_bodyAcc_std_Z           | tBodyAcc-std()-Z            |
| time_gravityAcc_mean_X       | tGravityAcc-mean()-X        |
| time_gravityAcc_mean_Y       | tGravityAcc-mean()-Y        |
| time_gravityAcc_mean_Z       | tGravityAcc-mean()-Z        |
| time_gravityAcc_std_X        | tGravityAcc-std()-X         |
| time_gravityAcc_std_Y        | tGravityAcc-std()-Y         |
| time_gravityAcc_std_Z        | tGravityAcc-std()-Z         |
| time_bodyAccJerk_mean_X      | tBodyAccJerk-mean()-X       |
| time_bodyAccJerk_mean_Y      | tBodyAccJerk-mean()-Y       |
| time_bodyAccJerk_mean_Z      | tBodyAccJerk-mean()-Z       |
| time_bodyAccJerk_std_X       | tBodyAccJerk-std()-X        |
| time_bodyAccJerk_std_Y       | tBodyAccJerk-std()-Y        |
| time_bodyAccJerk_std_Z       | tBodyAccJerk-std()-Z        |
| time_bodyGyro_mean_X         | tBodyGyro-mean()-X          |
| time_bodyGyro_mean_Y         | tBodyGyro-mean()-Y          |
| time_bodyGyro_mean_Z         | tBodyGyro-mean()-Z          |
| time_bodyGyro_std_X          | tBodyGyro-std()-X           |
| time_bodyGyro_std_Y          | tBodyGyro-std()-Y           |
| time_bodyGyro_std_Z          | tBodyGyro-std()-Z           |
| time_bodyGyroJerk_mean_X     | tBodyGyroJerk-mean()-X      |
| time_bodyGyroJerk_mean_Y     | tBodyGyroJerk-mean()-Y      |
| time_bodyGyroJerk_mean_Z     | tBodyGyroJerk-mean()-Z      |
| time_bodyGyroJerk_std_X      | tBodyGyroJerk-std()-X       |
| time_bodyGyroJerk_std_Y      | tBodyGyroJerk-std()-Y       |
| time_bodyGyroJerk_std_Z      | tBodyGyroJerk-std()-Z       |
| time_bodyAccMag_mean         | tBodyAccMag-mean()          |
| time_bodyAccMag_std          | tBodyAccMag-std()           |
| time_gravityAccMag_mean      | tGravityAccMag-mean()       |
| time_gravityAccMag_std       | tGravityAccMag-std()        |
| time_bodyAccJerkMag_mean     | tBodyAccJerkMag-mean()      |
| time_bodyAccJerkMag_std      | tBodyAccJerkMag-std()       |
| time_bodyGyroMag_mean        | tBodyGyroMag-mean()         |
| time_bodyGyroMag_std         | tBodyGyroMag-std()          |
| time_bodyGyroJerkMag_mean    | tBodyGyroJerkMag-mean()     |
| time_bodyGyroJerkMag_std     | tBodyGyroJerkMag-std()      |
| fft_bodyAcc_mean_X           | fBodyAcc-mean()-X           |
| fft_bodyAcc_mean_Y           | fBodyAcc-mean()-Y           |
| fft_bodyAcc_mean_Z           | fBodyAcc-mean()-Z           |
| fft_bodyAcc_std_X            | fBodyAcc-std()-X            |
| fft_bodyAcc_std_Y            | fBodyAcc-std()-Y            |
| fft_bodyAcc_std_Z            | fBodyAcc-std()-Z            |
| fft_bodyAccJerk_mean_X       | fBodyAccJerk-mean()-X       |
| fft_bodyAccJerk_mean_Y       | fBodyAccJerk-mean()-Y       |
| fft_bodyAccJerk_mean_Z       | fBodyAccJerk-mean()-Z       |
| fft_bodyAccJerk_std_X        | fBodyAccJerk-std()-X        |
| fft_bodyAccJerk_std_Y        | fBodyAccJerk-std()-Y        |
| fft_bodyAccJerk_std_Z        | fBodyAccJerk-std()-Z        |
| fft_bodyGyro_mean_X          | fBodyGyro-mean()-X          |
| fft_bodyGyro_mean_Y          | fBodyGyro-mean()-Y          |
| fft_bodyGyro_mean_Z          | fBodyGyro-mean()-Z          |
| fft_bodyGyro_std_X           | fBodyGyro-std()-X           |
| fft_bodyGyro_std_Y           | fBodyGyro-std()-Y           |
| fft_bodyGyro_std_Z           | fBodyGyro-std()-Z           |
| fft_bodyAccMag_mean          | fBodyAccMag-mean()          |
| fft_bodyAccMag_std           | fBodyAccMag-std()           |
| fft_bodyBodyAccJerkMag_mean  | fBodyBodyAccJerkMag-mean()  |
| fft_bodyBodyAccJerkMag_std   | fBodyBodyAccJerkMag-std()   |
| fft_bodyBodyGyroMag_mean     | fBodyBodyGyroMag-mean()     |
| fft_bodyBodyGyroMag_std      | fBodyBodyGyroMag-std()      |
| fft_bodyBodyGyroJerkMag_mean | fBodyBodyGyroJerkMag-mean() |
| fft_bodyBodyGyroJerkMag_std  | fBodyBodyGyroJerkMag-std()  |


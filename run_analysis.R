library(plyr)
library(reshape2)


# set root to read files
root_dir <- "UCI HAR Dataset"
data <- list()

# load features
data$features <- read.table(
  paste(root_dir, "features.txt", sep="/"),
  col.names = c('id', 'name'),
  stringsAsFactors=FALSE
  )

# load activity_features
data$activity_labels <- read.table(
  paste(root_dir, "activity_labels.txt", sep="/"),
  col.names = c('id', 'activity')
  )


# load test data
data$test <- cbind(
  subject = read.table(
    paste(root_dir, "test", "subject_test.txt", sep="/"),
    col.names="subject"
    ),
  y = read.table(
    paste(root_dir, "test", "y_test.txt", sep="/"),
    col.names="activity_id"
    ),
  x = read.table(
    paste(root_dir, "test", "X_test.txt", sep="/")
    )
  )

# load train data
data$train <- cbind(
  subject = read.table(
    paste(root_dir, "train", "subject_train.txt", sep="/"),
    col.names="subject"
    ),
  y = read.table(
    paste(root_dir, "train", "y_train.txt", sep="/"),
    col.names="activity_id"
    ),
  x = read.table(
    paste(root_dir, "train", "X_train.txt", sep="/")
    )
  )

# normalize column names
rename_features <- function(col) {
  col <- gsub("tBody", "time_body", col)
  col <- gsub("tGravity", "time_gravity", col)

  col <- gsub("fBody", "fft_body", col)
  col <- gsub("fGravity", "fft_gravity", col)

  col <- gsub("\\-mean\\(\\)\\-", "_mean_", col)
  col <- gsub("\\-std\\(\\)\\-", "_std_", col)

  col <- gsub("\\-mean\\(\\)", "_mean", col)
  col <- gsub("\\-std\\(\\)", "_std", col)

  return(col)
}

# extract only the measurements on the mean and standard deviation for each measurement
tidy <- rbind(data$test, data$train)[,c(1, 2, grep("mean\\(|std\\(", data$features$name) + 2)]

# use descriptive activity names to name the activities in the data set
names(tidy) <- c("subject", "activity_id",
                 rename_features(
                   data$features$name[grep("mean\\(|std\\(", data$features$name)]
                   )
                 )

# label the data set with descriptive activity names
tidy <- merge(tidy, data$activity_labels, by.x="activity_id", by.y="id")
tidy <- tidy[,!(names(tidy) %in% c("activity_id"))]

# creates a second data set with the average of each variable for each activity and each subject
tidy_mean <- ddply(
  melt(
    tidy,
    id.vars = c("subject", "activity")
    ),
  .(subject, activity),
  summarise,
  mean_samples = mean(value)
  )

# dump results
write.csv(tidy_mean, file = "tidy_mean.txt", row.names = FALSE)
write.csv(tidy, file = "tidy.txt", row.names = FALSE)

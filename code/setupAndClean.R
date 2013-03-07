load("./data/samsungData.rda")
# the names of samsungData contain invalid characters, clean them up
names(samsungData) <- make.names(names(samsungData), unique=TRUE)

# convert subject and activity to factors
samsungData$subject <- as.factor(samsungData$subject)
samsungData$activity <- as.factor(samsungData$activity)

# We have 21 subjects, so to divide the data into 3 (train, validate, test) they can have 7 each
# create training set (must include the data from subjects 1, 3, 5, and 6)
ssdTrain <- subset(samsungData, subject %in% c(1,3,5,6,7,8,11))
# create a validation set
ssdVal <- subset(samsungData, subject %in% c(14,15,16,17,19,21,22))
# create test set (must be from at least subjects 27, 28, 29, and 30)
ssdTestDONOTUSE <- subset(samsungData, subject %in% c(23,25,26,27,28,29,30))

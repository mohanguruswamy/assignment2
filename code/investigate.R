load("./data/samsungData.rda")
# the names of samsungData contain invalid characters, clean them up
names(samsungData) <- make.names(names(samsungData), unique=TRUE)


# For this analysis your training set must include the data from subjects 1, 3, 5, and 6.
ssdTrain <- subset(samsungData, subject<=6)
# Your test set is the data from subjects 27, 28, 29, and 30
ssdTestDONOTUSE <- subset(samsungData, subject>=27)
# create a validation set
ssdVal <- subset(samsungData, subject %in% c(7,8,11,14,15))

library(tree)
make.names(names(ssdTrain), unique=TRUE)

ssdTrain2 <- ssdTrain
ssdTrain2$subject <- as.factor(ssdTrain2$subject)
ssdTrain2$activity <- as.factor(ssdTrain2$activity)
tree1 <- tree(activity ~ ssdTrain$tBodyAcc.mean...X + ssdTrain$tBodyAcc.std...X,data=ssdTrain)
tree2 <- tree(activity ~ .,data=ssdTrain2)
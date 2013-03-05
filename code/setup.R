# For this analysis your training set must include the data from subjects 1, 3, 5, and 6
ssdTrain <- subset(samsungData, subject<=6)
# Your test set is the data from subjects 27, 28, 29, and 30
ssdTest <- subset(samsungData, subject>=27)

table(ssdTrain$subject, ssdTrain$activity)
plot(table(ssdTrain$subject, ssdTrain$activity))

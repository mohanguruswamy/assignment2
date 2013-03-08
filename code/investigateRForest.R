library(randomForest)
rf <- randomForest(activity ~ ., data=ssdTrain)
summary(rf)
plot(rf)

# try training the random forest on larger set (train + val)
# because rf uses cross validation and doesn't need a separate validation set
ssdTrainVal <- rbind(ssdTrain, ssdVal)
# remove the subject variable (don't want to predict on that)
ssdTrainVal <- ssdTrainVal[, !(colnames(ssdTrainVal) %in% c("subject"))]
# train the random forest again
rf.trainVal <- randomForest(activity ~ ., data=ssdTrainVal)
print(rf.trainVal)
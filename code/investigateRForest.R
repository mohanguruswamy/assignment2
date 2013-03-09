library(randomForest)
rf <- randomForest(activity ~ ., data=ssdTrain)
summary(rf)
plot(rf)

# try training the random forest on larger set (train + val)
# because rf uses cross validation and doesn't need a separate validation set
ssdTrainVal <- rbind(ssdTrain, ssdVal)
# train the random forest again
rf.trainVal <- randomForest(activity ~ ., data=ssdTrainVal)
print(rf.trainVal)
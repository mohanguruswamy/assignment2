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

# now apply the final model to the test set
rf.pred1 <- predict(rf.trainVal, ssdTestDONOTUSE, type="class")
print(rf.pred1)
# calculate the misclassification rate
rf.misclass <- sum(rf.pred1 != ssdTestDONOTUSE$activity)
rf.misclass.rate <- rf.misclass / length(ssdTestDONOTUSE$activity) *100
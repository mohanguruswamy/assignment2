# have a look at an intial tree to find important variables
library(tree)
tree1 <- tree(activity ~ .,data=ssdTrain)
summary(tree1)
par(mfrow=c(1,1))
plot(tree1)  # for some reason the 'main' argument doesn't work
title("tree(activity ~ .,data=ssdTrain)")
text(tree1, cex=.8)
summary(tree1)  # use this to view the misclassification rate
important.vars <- as.character(tree1$frame$var)
important.vars <- important.vars[important.vars!="<leaf>"]
print(important.vars)

# now apply the model to the validation set
tree.pred1 <- predict(tree1, ssdVal, type="class")
summary(tree.pred1)
# calculate the misclassification rate
misclass <- sum(tree.pred1 != ssdVal$activity)
misclass.rate <- misclass / length(ssdVal$activity)


# try a differnt tree library (not used for assignment)
library(rpart)
tree.rp <- rpart(activity ~ ., data=ssdTrain)
summary(tree.rp)
par(mar=c(2,0.5,0.5,1))
plot(tree.rp, main="initial tree (rpart library)")
text(tree.rp, cex=.8)
# prune the tree 
pfit<- prune(tree.rp, cp=tree.rp$cptable[which.min(tree.rp$cptable[,"xerror"]),"CP"])
plot(pfit, main="pruned rpart tree")  # plot the pruned tree
text(pfit, cex=.8)  # same tree... is this right?

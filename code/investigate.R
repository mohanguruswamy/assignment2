
library(tree)
tree1 <- tree(activity ~ .,data=ssdTrain)
summary(tree1)
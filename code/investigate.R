
library(tree)

tree1 <- tree(activity ~ ssdTrain$tBodyAcc.mean...X + ssdTrain$tBodyAcc.std...X,data=ssdTrain)
tree2 <- tree(activity ~ .,data=ssdTrain2)
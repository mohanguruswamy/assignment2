
library(tree)
tree1 <- tree(activity ~ .,data=ssdTrain)
summary(tree1)
plot(tree1)  # for some reason the 'main' argument doesn't work
title("initial tree (tree library)")
text(tree1, cex=.8)

# try a differnt tree library
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

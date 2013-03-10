numericActivity <- as.numeric(as.factor(samsungData$activity))[samsungData$subject==1]
svd1 = svd(scale(samsungData[samsungData$subject==1,-c(562,563)])) 
par(mfrow=c(1,2))
plot(svd1$u[,1],col=numericActivity,pch=19) 
plot(svd1$u[,2],col=numericActivity,pch=19)
# find the max contributor
plot(svd1$v[,2],pch=19)
# cut off here, lack of time
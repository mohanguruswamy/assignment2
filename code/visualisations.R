currentSubject <- 1L
str(samsungData[1,1:12])
# for a given subject, make a combined plot for all 3 xyz values
# iterate through the values three at a time
for(xyzGroup in 1:4){
  par(mfrow=c(1,3), oma = c(0, 0, 3, 0))  # oma sets the margin for the title
  for(i in 1:3){
    plot(samsungData[samsungData$subject==currentSubject, i*xyzGroup]
         ,pch=19
         ,col=numericActivity
         ,ylab=names(samsungData)[i*xyzGroup]) 
  }
  # set a title for the triplet - this can just be the name of the last value (y)
  mtext(names(samsungData[xyzGroup * 3]), outer = TRUE)
}
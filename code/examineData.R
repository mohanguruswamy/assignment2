# This code just looks at the data to get a feel for it
dim(samsungData)
# count how many subjects
length(unique(samsungData$subject))
plot(samsungData[,1])
for (i in 2:100) {
  points(samsungData[,i])
}
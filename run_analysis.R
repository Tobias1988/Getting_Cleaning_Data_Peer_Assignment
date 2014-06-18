#for more information please refer to the codebook.md file

features<-read.table("features.txt")
features<-features$V2
xtest<- read.table("X_test.txt")
xtrain<-read.table("x_train.txt")
combinex<- rbind(xtest, xtrain)
colnames(combinex)<-features
testmean <- combinex[,grep("mean", names(combinex))]
testMean <- combinex[,grep("Mean", names(combinex))]
testMm <- cbind(testMean, testmean)
teststd <- combinex[,grep("std", names(combinex))]
MeansAndStd<-cbind(testMm, teststd)
Tdata<-MeansAndStd
VariableAvg<- colMeans(MeansAndStd)
ObservationAvg<-rowMeans(MeansAndStd)
capture.output(Tdata, file="TidyData", append=TRUE)
capture.output(ObservationAvg, file="ObservationAvg", append=TRUE)
capture.output(VariableAvg, file="VariableAvg", append=TRUE)

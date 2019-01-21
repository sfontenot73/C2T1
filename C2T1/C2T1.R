install.packages("readr")
library(readr)
Cars <- read.csv("~/C2T1/R Tutorial Data Sets/cars.csv")
Cars
names(Cars)<-c("Name","Speed","Distance")
Cars
summary(Cars)
is.na(Cars)
set.seed(123)
trainSize<-round(nrow(Cars)*.7)
testSize<-nrow(Cars)-trainSize
trainSize
testSize
training_indices<-sample(seq_len(nrow(Cars)),size=trainSize)
trainSet<-Cars[training_indices,]
testSet<-Cars[-training_indices,]
CarModel<-lm(Distance~ Speed, trainSet)
summary(CarModel)
CarPrediction<-predict(CarModel,testSet)
CarPrediction

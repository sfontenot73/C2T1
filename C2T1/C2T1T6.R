library(readr)
IrisDataset <- read.csv("~/C2T1/R Tutorial Data Sets/iris.csv")
attributes(IrisDataset)
summary(IrisDataset) 
str(IrisDataset)
names(IrisDataset)
IrisDataset$Species<- as.numeric(IrisDataset$Species) 
hist(IrisDataset$Species)
plot(IrisDataset$Sepal.Length)
qqnorm(IrisDataset$Species)
set.seed(123)
ItrainSize <- round(nrow(IrisDataset) * 0.7)
ItestSize <- nrow(IrisDataset) - ItrainSize
ItrainSize
ItestSize
Itraining_indices<-sample(seq_len(nrow(IrisDataset)),size=ItrainSize)
ItrainSet <- IrisDataset[Itraining_indices, ]
ItestSet <- IrisDataset[-Itraining_indices, ]
LinearModel<- lm(Petal.Length~ Petal.Width,ItrainSet)
summary(LinearModel)
prediction<-predict(LinearModel,ItestSet)
prediction
     
     
     
     
     
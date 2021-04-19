install.packages("caret")
library(caret)
library(rpart.plot)

data = read.csv("E:/2ndMSIT/Intro_to_ML/DataScience_2019501037/Data_Mining/Late Submission/Solution 3/lenses.csv", header = FALSE, col.names = c("1", "2", "3", "4", "5", "Label"))


str(data)
summary(data)

x = data[,1:4]
y = as.factor(data$Label)


model = rpart(y~.,x,control=rpart.control(minsplit=0,minbucket=0,cp=-1, maxcompete=0, maxsurrogate=0, usesurrogate=0, xval=0,maxdepth=3))


plot(model)
text(model)

rpart.plot(model)

#Information Gain
sum(y==predict(model,x,type="class"))/length(y)

#miscalassification error
1-sum(y==predict(model,x,type="class"))/length(y)


model1 = rpart(y~.,x,control=rpart.control(minsplit=0,minbucket=0,cp=-1, maxcompete=0, maxsurrogate=0, usesurrogate=0, xval=0,maxdepth=3))

plot(model1)
text(model1)

rpart.plot(model1)

#Information Gain
sum(y==predict(model1,x,type="class"))/length(y)

#miscalassification error
1-sum(y==predict(model1,x,type="class"))/length(y)



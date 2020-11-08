data <- read.csv("BSE_Sensex_Index.csv",header= TRUE)

head(data)

names(data)

str(data)

Sample_1000 <- sample(seq(1,length(data[,1])), 1000, replace=T)

Sample_3000 <- sample(seq(1,length(data[,1])), 3000, replace=T)

summary(data)

is.null(data)

sample_1<-data[Sample_1000,1]
sample_2<-data[Sample_3000,1]



mean(Sample_1000)
max(Sample_1000)
var(Sample_1000)

mean(Sample_3000)
max(Sample_3000)
var(Sample_3000)

quantile(Sample_1000,.25)
quantile(Sample_3000,.25)


mean(data[,2])
max(data[,2])
var(data[,2])
quantile((data[,2]),.25)


mean(data, na.rm = TRUE)


mean(data$V1)

summary(Sample_1000)

sapply(data, class)
data$V2<-as.factor(data$V2)
data$V3<-as.factor(data$V3)
data$V4<-as.factor(data$V4)
data$V5<-as.factor(data$V5)
data$V6<-as.integer(data$V6)
data$V7<-as.factor(data$V7)
sapply(df, class)
sapply(data, class)
summary(data)

library(ggplot2)
ggplot(data = data,mapping = aes(x=V2,y= V7))+geom_boxplot()+ labs(
  x="SNSEX DETAILS",y = "STOCK PRICES")
)
help("hist")
hist(data$V7,main="histogram",xlab = "closer values",xlim=(0,2000),col="blue",freq = FALSE)

hist(Adj Close)

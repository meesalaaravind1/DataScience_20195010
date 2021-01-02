data <- read.csv("BSE_Sensex_Index.csv",header= TRUE)

head(data)

names(data)

str(data)

Sample_1000 <- sample(seq(1,length(data[,1])), 1000, replace=T)

Sample_3000 <- sample(seq(1,length(data[,1])), 3000, replace=T)

mean(Sample_1000)
max(Sample_1000)
var(Sample_1000)

mean(Sample_3000)
max(Sample_3000)
var(Sample_3000)

quantile(Sample_1000,.25)
quantile(Sample_3000,.25)

summary(data)

open <- data$Open
high <- data$High
low <- data$Low
close <- data$Close

boxplot (open, high, low, close,
         main = "Boxplot for the values",
         names = c ("Open", "High", "Low", "Close"),
         col = c ("red", "grey","blue","white"),
         horizontal = TRUE,
         notch = TRUE)

hist(data$Close, ylim = c(0,2000), col="turquoise",main = "BSE Sensex clouser", xlab="Adj Clouser points")

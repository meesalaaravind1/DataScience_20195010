California_houses_data <- read.csv("CA_house_prices.csv",header=FALSE)
California_houses_data

Ohio_houses_data <- read.csv("OH_house_prices.csv",header=FALSE)
Ohio_houses_data

dim(California_houses_data)

dim(Ohio_houses_data)

str(Ohio_houses_data)

str(California_houses_data)

boxplot(Ohio_houses_data,col="blue", main="OHIO HOUSES View Data Box Plots")

boxplot(California_houses_data,col="blue", main="CALIFORNIA HOUSE PRICE DATA Box Plots")

hist(California_houses_data$V1)

hist(Ohio_houses_data$V1)

hist(California_houses_data[,1]*100,breaks=seq(0,35000,by=5000),col="red",xlab="California houses Prices in thousands",ylab = "frequency",main="Priyanka's CA House Plot")


plot(ecdf(California_houses_data[,1]),verticals= TRUE,do.p = FALSE,main ="ECDF for House Prices",xlab="Prices(in thousands)",ylab="Frequency")

lines(ecdf(Ohio_houses_data[,1]),verticals= TRUE,do.p = FALSE,col.h="red",col.v="red",lwd=4)

legend(2100,.6,c("CA Houses","OH Houses"), col=c("black","red"),lwd=c(1,4))

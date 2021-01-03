football_data <- read.csv("football.csv", header=TRUE)

plot(football_data[,2],football_data[,3],xlim=c(0,12),
     ylim=c(0,12),pch=15,col="blue",xlab="2003 Wins",ylab="2004 Wins",
     main="Football Wins (Priyanka)")

# because some data are plotted on the sameset of axes and are not visible because
# they were plotted on top of each other, solution is to add a small amount of noise to the points


cor(football_data[,2],football_data[,3])

cor(football_data[,2],football_data[,3]+10)

cor(football_data[,2],football_data[,3]*2)

cor(football_data[,2],football_data[,3]*-2)

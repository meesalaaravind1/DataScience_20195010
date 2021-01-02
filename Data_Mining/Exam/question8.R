sensex_data <- read.csv("BSE_Sensex_Index.csv")

View(sensex_data)

growth_rate <- c()

for(i in 1:15446){
  growth_rate[i] <- (sensex_data$Close[i] - sensex_data$Close[i+1])/sensex_data$Close[i+1]
}
growth_rate[15447]<- (growth_rate[15446] +growth_rate[15445]+growth_rate[15444])/3
growth_rate[15447]

z_growth_rate <- c()
mean <- mean(growth_rate)
mean

sd <- sd(growth_rate)
sd

for (j in 1:15447){
  z_growth_rate[j] <- (growth_rate[j] - mean)/(sd)
}

outlier_dates <- c()
count <- 0
date <- 1

for (k in 1:15447){
  if(z_growth_rate[k] > 3){
    count <- count + 1
    outlier_dates[date] <- sensex_data$Date[k]
    date <- date +1
  }
  if(z_growth_rate[k] < -3){
    count <- count + 1
    outlier_dates[date] <- sensex_data$Date[k]
    date <- date +1 
  }
}
count  
outlier_dates

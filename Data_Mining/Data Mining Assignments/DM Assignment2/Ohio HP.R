OH_Data_sample_10000 <- sample_n(Ohio_houses_data, 10000)

median(OH_Data_sample_10000[,1])

mean(OH_Data_sample_10000[,1])

# data is right-skewed, the mean is greater than the median


median(OH_Data_sample_10000[,1] + 10)

#meadian has been increased by 10


median(OH_Data_sample_10000[,1] *2)

#meadian has been doubled


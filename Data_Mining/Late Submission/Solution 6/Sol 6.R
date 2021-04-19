install.packages("factoextra")
data <- read.csv("E:/2ndMSIT/Intro_to_ML/DataScience_2019501037/Data_Mining/Late Submission/Solution 6/Liver_data.csv",header=FALSE)
#seed - to randomly assign centroids. k means custering startswith randomly assigning centroids

set.seed(123)
#no of centers = 4
#nstart - how many random sets should be chosen for 4 centers
#iter.max - maximum number of iterations allowed
res.km <- kmeans(scale(data[,-7]), 4, nstart = 25,iter.max=10)
print(res.km)

#plotting and assigning points
library(cluster)
library("factoextra")
fviz_cluster(res.km, data = data[, -7],
             
             palette = c("#2E9FDF", "#273746", "#E7B800","#D35400"),
             geom = "point",
             ellipse.type = "convex", 
             ggtheme = theme_bw()
)


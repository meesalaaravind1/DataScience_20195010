train_data <- read.csv("sonar_train.csv",header = FALSE)

test_data <- read.csv("sonar_test.csv", header = FALSE)

y <- as.factor(train_data[,61])
x <- train_data[, 1:60]

fit <- rpart(y ~ ., x, control = rpart.control(minsplit = 0, minbucket = 0,maxdepth = 3))

plot(fit)
text(fit)

print(fit)

plotcp(fit)

predictions <- as.numeric(predict(fit, test_data, type = "class"))
predictions <- replace(predictions, predictions == 1, -1)
predictions <- replace(predictions, predictions == 2, 1)
predictions <- as.numeric(predictions)
predictions

actual <- test_data[, 61]
compare <- predictions == actual
length(compare[compare == TRUE])/length(compare)

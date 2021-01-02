transaction <- read.csv("transactions.csv")

names(transaction)

transaction$TID <- NULL

colnames(transaction) <- c("ItemList")

names(transaction)

write.csv(transaction,'ItemList.csv',quote = FALSE,row.names = TRUE)
install.packages("arules")
library(arules)
txn = read.transactions(file="ItemList.csv",rm.duplicates=TRUE,format="basket",sep=",",cols=1);

txn@itemInfo$labels <- gsub("\"","",txn@itemInfo$labels)
basket_rules <- apriori(txn,parameter = list(sup = 0.01,target = "rules"))

if (sessionInfo()['basepkgs']=="tm" | sessionInfo()['otherpkgs']=='tm'){
  detach(package:tm,unload=TRUE)
}
inspect(basket_rules)

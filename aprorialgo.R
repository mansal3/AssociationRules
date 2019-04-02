#libraray consist of aprori algorithm
library(arules)
#for visualisation
library(arulesViz)
#note for market basket ananlyss u cannot perform it on normal data frame u always required data frameto be converted in transactions
data(Groceries)
str(Groceries)
#inspect
inspect(Groceries)
# as u can notice in inspection each index consist of elements in form of basket

#now what if u want to import dataframe in transaction from 
#read.transactions(file.choose())

#so for market basket analysis we will use aprori algorithm
model_rules<-apriori(Groceries)

#so by default it take the support confidence and lift

model_rules_<-apriori(Groceries,parameter = list(supp=.001,conf=0.7,minlen=2))
inspect(model_rules_)

model_rules_1<-apriori(Groceries,parameter = list(supp=.001,conf=0.9,minlen=2))
inspect(model_rules_1[1:10])


plot(Groceries)
plot(Groceries.pruned)

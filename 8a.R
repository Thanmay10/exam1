install.packages("e1071")
library(e1071)
data(iris)
set.seed(123)
index=sample(1:nrow(iris),size=0.7*nrow(iris))
td=iris[index, ]
test=iris[-index, ]
model=naiveBayes(Species~.,data=td)
print(model)
test1=test[, -5]
pred=predict(model,test1)
print(pred)
data <- data.frame(Area = c(1000, 1200, 1500, 1800, 2000, 2200),
  Bed = c(2, 2, 3, 3, 4, 4),
  Bath = c(1, 2, 2, 2, 3, 3),
  Price = c(30, 35, 45, 50, 60, 65))
print(data)
model1=lm(Price~Area,data=data)
summary(model1)
model2=lm(Price~Area+Bed+Bath,data=data)
summary(model1)
pred=predict(model2,data)
print(pred)
new=data.frame(Area=3500,Bed=5,Bath=4)
newpred=predict(model2,new)
print(newpred)
plot(data$Price,pred,main="Actual vs Predcited",xlab="actual",ylab="predict",pch=19,col="green")
abline(0,1,col="red",lwd=2)
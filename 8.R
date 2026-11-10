install.packages("class")
library(class)
data=data.frame(Name=c("A","B","C","D","E"),Age=1:5,Gender=c(0,0,1,1,0),Sport=c("Cricket","Volleyball","Football","Cricket","Cricket"))
print(data)
tp=data.frame(Age=7,Gender=1)
tf=data[, c('Age','Gender')]
tl=data$Sport
pred=knn(train=tf,test=tp,cl=tl,k=3)
print(paste("The pred sport for the test point is:",pred))
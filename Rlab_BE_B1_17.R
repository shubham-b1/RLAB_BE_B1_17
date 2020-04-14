sal<-read.csv(file.choose(),header = T)

attach(sal)

names(sal)

View(sal)

mean(Phdexp)

median(Phdexp)

summary(sal)

str(sal)

hist(Serviceyrs, main="Histogram for Service year", col=2, lwd=3)

barplot(Serviceyrs, main="BarPlot for Service year", col=2, lwd=3)

plot(Serviceyrs, main="Scatter Plot", xlab="Service Year",col=2, lwd=3)

install.packages("rpart.plot")
library(rpart)
library(rpart.plot)

nn<- rpart(Rank~Discipline+Serviceyrs,sal)
a4<-data.frame(Discipline=c("A"),Serviceyrs=c(41))
res3=predict(nn,a4)
rpart.plot(nn)

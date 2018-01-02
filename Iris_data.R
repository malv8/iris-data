#import built in dataset
data("iris")
attach(iris)

#view summary of dataset
summary(iris)
sd(iris$Sepal.Length)
#display structure
str(iris)
#define attributes of dataset
names(iris)
#dimension
dim(iris)
ncurve<-seq(0,150,10)
par(mfrow=c(2,2))
hist(iris$Sepal.Length)
boxplot(iris)
plot(ncurve,dnorm(ncurve,5.8 ,0.828),type = "l")
plot(Species~Sepal.Length)
plot(iris)
t.test(Sepal.Length,Petal.Length,alternative = "greater")

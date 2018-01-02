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
#import library
library(dplyr)
# filter() the data for species virginica
virginica <- filter(iris, species == "virginica")
head(virginica) # This dispalys the first six rows
# select() the specified columns
selected <- select(iris, sepal.length, sepal.width, petal.length)
# select all columns from sepal.length to petal.length
selected2 <- select(iris, sepal.length:petal.length)
head(selected, 3)
t.test(Sepal.Length,Petal.Length,alternative = "greater") #alternative hypothesis: true difference in means is greater than 0

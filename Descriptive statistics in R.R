data <- iris
head(data)

#Structure of the dataset
str(data)

#minimum and maximum
min(data$Sepal.Length)
min(data$Petal.Length)

max(data$Sepal.Width)
max(data$Sepal.Length)

#range
range(data$Sepal.Length)
rng <- max(data$Sepal.Length)-min(data$Sepal.Length)
rng

#range with using function
range_of_dist <- function(x) {
  range <- max(x)-min(x)
  return(range)
}
range_of_dist(data$Petal.Width)

#mean
mean(data$Sepal.Length)
mean(data$Sepal.Length, trim = 0.10)

#mediam
median(data$Sepal.Length)

#first quartile
quantile(data$Sepal.Length, 0.25)

#third quartile
quantile(data$Sepal.Length, 0.75)

#98%
quantile(data$Sepal.Length, 0.98)

#IQR
IQR(data$Sepal.Length)

#sd
sd(data$Sepal.Length)

#varience
var(data$Sepal.Length)

#to compute the standard deviation (or variance) of multiple variables at the same time, 
#use lapply() with the appropriate statistics as second argument:

lapply(data[, 1:4], sd)
lapply(data[, 1:4], var)


#summary of data
summary(data)

#if you need these descriptive statistics by group use the by() function:
by(data, data$Species, summary)

#If you need more descriptive statistics, use stat.desc() from the package {pastecs}
install.packages("pastecs")
library(pastecs)
stat.desc(data)

#coefficient of variation
sd(data$Sepal.Length)/mean(data$Sepal.Length)

#mode
tab <- table(data$Sepal.Length)
sort(tab, decreasing = TRUE)

sort(table(data$Species), decreasing = TRUE)

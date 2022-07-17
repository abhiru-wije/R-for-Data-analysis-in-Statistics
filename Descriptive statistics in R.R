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

a <- c(2,4,1,5,8)

#revise entire vector
rev(a)

b <- c(2,3,3,4,5,5,5,6,7,2)

#Unique elements
unique(b)
table(b)

g <- c("cat", "cat", "dog")
unique(g)
table(g)

#random sample
a <- c(10,20,30,40,50,60,70,80,90,100)
s1 <- sample(a, 6)

#with the replace property
sample(a, 5, replace = TRUE) #bootstrapped sample

#if you want to fix the outcome sample
set.seed(1311) #you can type any of the value to here, but globally outcome is same as this output
sample(a,5)

set.seed(111)
sample(a, 5, replace = TRUE)

#special
sample(a, 11) # this is caused an error, because there no 11 elements in the vector

sample(a, 11, replace = TRUE)

#repeat vector
a <- c(10,20,30)
rep(a,5)

h <- c(T,T,T,F,F,F,T)
k <- c(T,T,T,T,T)
g <- c(F,F,F,F,F)

#any means all values if T->True 
any(h)
any(g)
any(k)

#all means all values if T-> True
all(h)
all(k)
all(g)

d <- c(3,4,5,6,7,6,8)
all(d>=5)
any(d>=5)

all(d>=2)
any(d>=2)

#getting indexes of T values
a <- c(T,T,T,F)
which(a)

which(d>=5)
d[which(d>=5)]
d[d>=5]

#getting index of the min and max value
which.max(d)
which.min(d)

#membership test
a <- c(2,3,6,8)
b <- c(1,3,4,6)

a%in%b
3%in%b
10%in%a

#remove element from vector
g <- c(2,53,45,56,68)
g[-c(2,4)] 

g[-which(g%in%c(45,68))]

f <- c(1,2,3,4,5,6,7,8,9)
#remove 2, 8 from the vector
f[-c(2,8)] # this is remove as a index
f[-which(f%in%c(2,8))] # this is remove as a value

#Mutablity
a <- c(2,3,6,8)
a[1]=10
a

a[c(3,4)] = c(100,200)
a
a[c(1,2)] = c("Abhiru", "Sashini")
a

a <- c(2,3,6,8)
replace(a,c(1,3), 10)

b <- c("Cat", "Cat", "Dog")
replace(b, c(1,2), "Man")
replace(b, c(1,2), "Dog")


#Special Note
g <- c(3,4,2,5,6,1,9)
summary(g)

str(g)


##############################################################

#################  METRICE & ARRAYS  #########################

##############################################################

a <- c(2,3,1,4,5,6)

#create matrix
m1 <- matrix(data = a, nrow = 2, ncol = 3)
m2 <- matrix(data= a, nrow = 3, ncol = 2)
m2
m3 <- matrix(data=a, nrow=3, ncol = 3) #if values does not enough then matrix call recursively
m3
m4 <- matrix(data = a, nrow = 3, ncol = 4)
m4

b <- matrix(c(12,23,34,45,56,67,78,89,90,34,54, 78), 3, 4)
b

#dimention
dim(b)
ncol(b)
nrow(b)

summary(b)
str(b)

a <- matrix(c(12,23,34,45,56,67,78,89,"a",34,54, 78), 3, 4)
a

summary((a))
str(a)

#Column Bind
c <- matrix(c(2,3,4,5), 2,2)
d <- matrix(c(5,6,7,9),2,2)

cbind(c,d)
rbind(c,d)

#indexing
g <- matrix(c(3,4,5,2,5,6,7,8,9,0,3,4,5,6,7,8,9,3,4,5), 4,5)
g[2]
g[1]
g[0]
g[c(1,3,5)]
g[2:5]

g
g[2,2]
g[4,3]
g[3,2]
g[2,3]
g[,2]
g[2,]

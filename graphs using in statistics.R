data <- iris
head(data)

#Contingency table
#We create the variable size which corresponds to small if the length of the 
#petal is smaller than the median of all flowers, big otherwise

data$size <- ifelse(data$Sepal.Length < median(data$Sepal.Length),
                    "small", "big"
                    )
table(data$size)

table(data$Species, data$size)

#Instead of having the frequencies (i.e.. the number of cases) you can also have 
#the relative frequencies (i.e., proportions) in each subgroup by adding the table() 
#function inside the prop.table() function

prop.table(table(data$Species, data$size))


#MOSAI PLOT
#A mosaic plot allows to visualize a contingency table of two qualitative variables

mosaicplot(table(data$Species, data$size),
           color = TRUE,
           xlab = "Species",
           ylab = "Size"
           )
#BARPLOT
#Barplots can only be done on qualitative variables (see the difference with a quantitative variable here).
#A barplot is a tool to visualize the distribution of a qualitative variable

library(ggplot2)

ggplot(data) +
  aes(x=size) +
  geom_bar()

#Histogram
ggplot(data)+
  aes(x= data$Sepal.Length)+
  geom_histogram()

#boxplot
boxplot(data$Sepal.Length) #one box
boxplot(data$Sepal.Length ~ data$Species) #comparison on each

ggplot(data) +
  aes(x= data$Species, y= data$Sepal.Length)+
  geom_boxplot()


#Scatterplot

plot(data$Sepal.Length, data$Sepal.Width)

ggplot(data) +
  aes(x=Sepal.Length, y=Petal.Length)+
  labs(title="Scatter plot", x= "Sepal Length", y="Petal Length", subtitle = "This is a comparion", caption = "This is based on...")+
  geom_point(color="red", alpha = 0.5)


#Line plot

ggplot(data)+
  aes(Sepal.Length, Petal.Length)+
  geom_line()


#Density Plot

plot(density(data$Sepal.Length))


ggplot(data)+
  aes(x=Sepal.Length)+
  geom_density()

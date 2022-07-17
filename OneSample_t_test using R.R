rm(list=ls())

# Example:
# Suppose the manufacturer claims that the mean lifetime of a light bulb is 
# more than 10,000 hours. In a sample of 30 light bulbs, it was found that 
# they only last 9,900 hours on average. Assume the sample standard deviation is 
# 125 hours. At 0.05 significance level, can we reject the claim by the manufacturer?

# H_0 : mean lifetime of a light bulb is less than 10,000 hours
#     : mu1 <= 10,000  

# H_1 : mean lifetime of a light bulb is more than 10,000 hours
#     : mu1 > 10,000  

# Data
mu0 <- 10000
X_bar <- 9900
sd <- 125
alpha <- 0.05
n <- 30

# computing the test statistic.(since we don't population sd, we go for t test)

t_calc = (X_bar-mu0)/(sd/sqrt(n))
t_calc

#compute the critical value at .05 significance level
help(qt)
t_crit <- qt(alpha, df=n-1, lower.tail = FALSE)
t_crit

# Decision
print("Since t_calc = -4.381 < t_crit = 1.699, we do not reject H0")

# Conclusion
print("At .05 significance level, we cannot claim that mean lifetime of a light blub is less than 10,000 hours ")

# Method 2 : using P-value
pval <- pt(t_calc, df=n-1, lower.tail = FALSE)
pval

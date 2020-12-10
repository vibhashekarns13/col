col <- read.csv("College Admission.csv")
head(col)
dim(col)


# To find the missing values and perform missing value treatment
sum(is.na(col))
# Ourput: There is no missing value


# To find outliers and perform  outlier treatment
boxplot(col, col = "red")
# Output: Two outliers found in gre
library(outliers)
outlier(col$gre)
# Outlier is 220 
col <- subset(col, gre!= 220)
outlier(col$gre)
# Outlier is 300
col <- subset(col, gre!= 300)
boxplot(col, col = 'red')
# Now there are no outliers


# To find the structure of the data set and if required, to transform the data type
str(col)
for(i in c('admit', 'ses', 'Gender_Male', 'Race', 'rank'))
  col[,i] <- as.factor(col[,i])













              
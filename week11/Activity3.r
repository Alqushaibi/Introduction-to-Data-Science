# 3.1. Normalize data with log transformation in base R
# ● Write and run the following in R. Make your conclusion about the code:


# Create data
mydata <- c(244, 753, 596, 645, 874, 141,639, 465, 999, 654)
# normalizing data
scaled_data <- log(mydata)
print(scaled_data)


#3.2. Normalize Data with Standard Scaling in R
#● Write and run the following in R. Make your conclusion about the code:
scaled_data2<- as.data.frame(scale(mydata))
print(scaled_data2)



# 3.3. Normalize Data using Min-Max Scaling
# ● Write and run the following in R. Make your conclusion about the code:
install.packages("caret")
library(caret)
minmax <- preProcess(as.data.frame(mydata), method=c("range"))
scaled_data3 <- predict(minmax, as.data.frame(mydata))
print(scaled_data3)

# 3.4. Compare and contrast the summary of the raw data vs normalized data
# ● Write and run the following in R. Make your conclusion about the code:
summary(mydata)
summary(scaled_data1)
summary(scaled_data2)
summary(scaled_data3)


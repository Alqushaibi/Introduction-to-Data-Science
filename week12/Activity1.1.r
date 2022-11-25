# Activity
# 1. Introduction to create linear regression
# 1.1. Create Relationship Model & get the Coefficients
# ● Write and run the following in R. Make your conclusion about the code:
# The predictor vector.
  x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
# The response vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function.
relation <- lm(y~x)
print(relation)

# 
# 1.2. Get the Summary of the Relationship
# ● Write and run the following in R. Make your conclusion about the code:
   print(summary(relation))
   
# 1.3. Predicting single value
# ● Write and run the following in R. Make your conclusion about the code:
# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <- predict(relation,a)
print(result)
# 
# 1.4. Predicting multiple value prediction
# ● Write and run the following in R. Make your conclusion about the code:
b <- data.frame(x=c(151, 174,170))
result <- predict(relation,b)
print(result)

# 1.5. Visualize the Regression Graphically
# ● Write and run the following in R. Make your conclusion about the code:
# Plot the chart.
plot(y,x,col = "blue",main = "Height & Weight Regression",
       abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab =
         "Height in cm")
# OR
scatter.smooth(y,x,col = "blue",main = "Height & Weight")

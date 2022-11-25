# 2. Creating linear regression with built-in dataset
# 2.1. Create model, summary and visualize
# ● Write and run the following in R. Make your conclusion about the code:
x=cars$speed
y=cars$dist
model1 <- lm(y~x)
print(model1)
print(summary(model1))
plot(y,x,main = "Distance & Speed",abline(lm(speed~dist,
                                             data=cars)),xlab = "Distance",ylab = "Speed")
scatter.smooth(y,x, main="Dist ~ Speed",xlab = "Distance",ylab =
                 "Speed")
# OR
model1 <- lm(speed~dist, data=cars)
print(model1)
print(summary(model1))
plot(y=cars$speed,x=cars$dist,main = "Distance & Speed",
     abline(lm(speed~dist, data=cars)),xlab = "Distance",ylab =
       "Speed")
scatter.smooth(y=cars$speed,x=cars$dist, main="Dist ~ Speed",xlab =
                 "Distance",ylab = "Speed")



# 2.2. Predicting new values
# ● Write and run the following in R. Make your conclusion about the code:
x=cars$speed
y=cars$dist
model1 <- lm(y~x)
newspeed <- data.frame(x=c(26, 27,28))
result <- predict(model1,newspeed)
print(result)


# 2.3. Extra: Learn more about the lm() and predict() function
# ● Write and run the following in R. Make your conclusion about the code:
?lm
?predict

# 1.1. Illustrate Pearson Correlation Testing using cor() method
# ● Write and run the following in R. Make your conclusion about the code:

x = c(1, 2, 3, 4, 5, 6, 7)
y = c(1, 3, 6, 2, 7, 4, 5)

# Calculating correlation coefficient using cor() method
result = cor(x, y, method = "pearson")
cat("Pearson correlation coefficient is:", result)

#1.2. Illustrate Pearson Correlation Testing using cor.test() method
#● Write and run the following in R. Make your conclusion about the code:
# Calculating correlation coefficient using cor.test() method
result = cor.test(x, y, method = "pearson")
# Print the result
print(result)

#1.3. Visualize Correlation Matrix using Correlogram
#● Write and run the following in R. Make your conclusion about the code:
install.packages("corrplot")
install.packages("RColorBrewer")
library(corrplot)
library(RColorBrewer)
M <-cor(mtcars)
?corrplot
corrplot(M, type="upper")
corrplot(M, type="upper", order="hclust")
corrplot(M, type="upper", order="hclust",col=brewer.pal(n=8, name="RdYlBu"))
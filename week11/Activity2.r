#2.1. Create and reorder correlation matrix
install.packages("lattice")
library(lattice)

data <-environmental
head(data)
corr_mat <- round(cor(data),2)
head(corr_mat)
# reorder corr matrix using corr coefficient as distance metric
dist <- as.dist((1-corr_mat)/2)
# hierarchical clustering the dist matrix
hc <- hclust(dist)
corr_mat <-corr_mat[hc$order, hc$order]
install.packages("reshape2")
library(reshape2)
# reduce the size of correlation matrix
melted_corr_mat <- melt(corr_mat)
head(melted_corr_mat)

#################################################################################
#2.2. Correlation Heatmap using ggplot2.
#● Write and run the following in R. Make your conclusion about the code:
install.packages("ggplot2")
library(ggplot2)
ggplot(data = melted_corr_mat, aes(x=Var1, y=Var2,
                                   fill=value)) + geom_tile() + geom_text(aes(Var2, Var1, label =
                                                                                value), color = "white", size = 4)
#################################################################################

# 2.3. Correlation Heatmap using heatmaply
# ● Write and run the following in R. Make your conclusion about the code:
install.packages("heatmaply")
library(heatmaply)
# plotting corr heatmap
heatmaply_cor(x = cor(data), xlab = "Features", ylab = "Features",
              k_col = 2, k_row = 2)

#################################################################################
# 2.4. Correlation Heatmap using ggcorplot
# ● Write and run the following in R. Make your conclusion about the code:

install.packages("ggcorrplot")

library(ggcorrplot)
# plotting corr heatmap
ggcorrplot::ggcorrplot(cor(data))














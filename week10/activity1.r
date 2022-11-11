data()

#1.2. Loading the dataset. Write and run the following in R:
# Load whole dataset
data(mtcars)
# Print the first 10 rows
print(head(mtcars, 10))
# Store only 2 columns in a variable
input <- mtcars[,c('mpg','cyl')]
# Print the first 5 rows
print(head(input))


#2. Visualizing basic plots
#2.1. Demonstration of the image-like graphics built-ins of R:
#  • Write and run the following in R. Make your conclusion about the code:
demo(graphics)
demo(image)
# press ‘Enter’ key in console to see next graphic/image

#2.2. Creating Pie Charts
#• Write and run the following in R. Make your conclusion about the code:
#  # Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
# Plot the chart. You can v
pie(x,labels)

#OR
#Give the chart file a name.
png(file = "city.png")
# Plot the chart.
pie(x,labels)
# Save the file.
# The image can be found in the same working directory
dev.off()



images_dir = "images"
dataset_dir = "dataset"
if (!dir.exists(images_dir)) {dir.create(images_dir)}

data()

data(mtcars)

# Print the first 10 rows
print(head(mtcars, 10))

#2.2. Creating Pie Charts
#• Write and run the following in R. Make your conclusion about the code:
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Plot the chart. You can view on the ‘Plots’ tab
pie(x,labels)


#Give the chart file a name.
png(file = "city1.png")
# Plot the chart.
pie(x,labels, main = "City pie chart", col = rainbow(length(x)))
# Save the file.
# The image can be found in the same working directory
dev.off()

piepercent<- round(100*x/sum(x), 1)
# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8,fill = rainbow(length(x)))


# Get the library.
library(plotrix)
# Plot the chart.
pie3D(x,labels = piepercent ,explode = 0.1, main = "Pie Chart of Countries ")
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8,fill = rainbow(length(x)))


# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data").


# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        main = "Mileage Data",
        notch = TRUE,
        varwidth = TRUE,
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)


v <- c(9,13,21,8,36,22,12,41,31,33,19)

# Create the histogram.
hist(v,xlab = "Weight",col = "yellow",border = "blue")
hist(v,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),nbreaks = 5)


# Create data for the graph.
v <- c(9,13,21,8,36,22,12,41,31,33,19)

# Get the input values.
input <- mtcars[,c('wt','mpg')]
# Plot the chart
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),
     main = "Weight vs Milage")
# Create the histogram.
hist(v,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),breaks = 5)


# Get the input values.
input <- mtcars[,c('wt','mpg')]
# Plot the chart
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),
     main = "Weight vs Milage")


#Give the image file a name.
png(file = "Scatterplot Matrix.png")
# Plot the matrices between 4 variables giving 12 plots.
# One variable with 3 others and total 4 variables.
pairs(~wt+mpg+disp+cyl,data = mtcars,
      main = "Scatterplot Matrix")
dev.off()

png(file = "images/barplot.png")
# Create the data for the chart
H <- c(7,12,28,3,41)
# Plot the bar chart
barplot(H)
dev.off()

png(file = "images/barplot2.png")
# Create the data for the chart
H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")
# Plot the bar chart
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="blue",
        main="Revenue chart",border="red")

dev.off()


# Create the input vectors.
colors = c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")
# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
png(file = "images/barplot3.png")

# Create the bar chart
barplot(Values, main = "total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)
# Add the legend to the chart
legend("topleft", regions, cex = 1.3, fill = colors)
dev.off()


png(file = "images/Line Graphs.png")
# Create the data for the chart.
v <- c(7,12,28,3,41)
# Plot the chart.
plot(v,type = "o")
dev.off()

png(file = "images/Line Graphs1.png")
# Plot the bar chart.
plot(v,type = "o", col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")

dev.off()

mkdir(images3)

pdf(file = "images/Line Graphs2.pdf")
# Add more data for the chart.
t <- c(14,7,6,19,3)
# Plot the bar chart.
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")
lines(t, type = "o", col = "blue")

dev.off()
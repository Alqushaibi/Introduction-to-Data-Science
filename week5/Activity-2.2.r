# 2.2. Naming List Elements
# • Write and run the following in R Console. Make your conclusion about the code:
# Create a list containing a vector and a list.
list_data <- list(c("Jan","Feb","Mar"), list("green",12.3))
# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A Inner list")
# Show the list.
print(list_data)
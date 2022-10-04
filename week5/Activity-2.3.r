# 2.3. Accessing List Elements
# • Write and run the following in R Console. Make your conclusion about the code:
  # Create a list containing a vector and a list.
list_data <- list(c("Jan","Feb","Mar"), list("green",12.3))
# Give names to the elements in the list.
names(list_data) <- c("1st_Quarter", "A_Inner_list")
# Access the first element of the list.
print(list_data[1])
# Access the thrid element. As it is also a list, all its elements will be printed.
print(list_data[2])
# Access the list element using the name of the element.
print(list_data$A_Inner_list)
# Get index of list element using value.
print(which(list_data$`1st_Quarter` == "Feb"))

# 2.4. List Manipulation
# • Write and run the following in R Console. Make your conclusion about the code:
# Create a list containing a vector and a list.
list_data <- list(c("Jan","Feb","Mar"), list("green",12.3))
# Give names to the elements in the list.
names(list_data) <- c("1st_Quarter", "A_Inner_list")
# Add element at the end of the list.
list_data[3] <- "New_element"
print(list_data[3])
# Remove the last element.
list_data[3] <- NULL
# Print the 3rd Element.
print(list_data[3])
# Update the 2nd Element.
list_data[2] <- "updated_element"
print(list_data[2])



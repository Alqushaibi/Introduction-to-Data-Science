data <- factor(c("East","West","East","North","North","East","West","West","West","East","North"))
levels(data) <- c(levels(data), "NorthWest")

data[3] <- "NorthWest"



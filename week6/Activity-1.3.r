data <- factor(c("East","West","East","North","North","East","West","West","West","East","North"))
levels(data) <- c(levels(data), "A")

data[3] <- "A"



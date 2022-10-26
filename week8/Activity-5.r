friend_id <- c(1:5)
friend_name <- c("Sachin","Sourav","Dravid","Sehwag","Dhoni")
location <- c("Kolkata","Delhi","Bangalore","Hyderabad","Chennai")

df <- data.frame(friend_id, friend_name, location)

#add col
friendshipdata <- as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11","2015-03-27"))

df2 <-cbind(df,friendshipdata)


df4 <- rbind(df2,df3)


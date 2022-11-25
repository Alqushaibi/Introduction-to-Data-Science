my_matrix <- matrix(c(1:30), nrow=10)
print(my_matrix)
df_from_matrix <- data.frame(my_matrix)
print(df_from_matrix)
names(df_from_matrix) <- c('col_1', 'col_2', 'col_3')
print(df_from_matrix)
df = df_from_matrix
print(df)

df1 = df[,-3]
print(df1)

df2 = df[-3,]
print(df2)

df3 = df[,3]
print(df3)

df4 = df[3,]
print(df4)

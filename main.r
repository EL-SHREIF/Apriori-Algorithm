source("functions/load_data.r")
source("functions/get_unique_values.r")
source("functions/get_support_of_matrix.r")
source("functions/get_accepted_values.r")

minimumSupport = 0.5

data <- load_data()
unique_matrix <- get_unique_values(data)
support_values <- get_support_of_matrix(unique_matrix)
accepted_values <- get_accepted_values(support_values, minimumSupport)
print(accepted_values)


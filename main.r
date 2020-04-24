source("functions/load_data.r")
source("functions/get_unique_values.r")
source("functions/get_support_of_matrix.r")
source("functions/get_accepted_values.r")
source("functions/support.r")
source("functions/get_combinations.r")

minimumSupport = 0.5

data <- load_data()
unique_matrix <- get_unique_values(data)
unique_values <- colnames(unique_matrix)

#support_values <- get_support_of_matrix(unique_matrix)
#accepted_values <- get_accepted_values(support_values, minimumSupport)

Ck = unique_values

while(length(Ck) != 0){
  Lk = get_support(Ck, 2500)
  Ck = get_combinations(Lk)
}





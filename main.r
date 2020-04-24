source("functions/load_data.r")
source("functions/get_unique_values.r")
source("functions/get_support_of_matrix.r")
source("functions/get_accepted_values.r")
source("functions/support.r")
source("functions/get_combinations.r")

minimumSupport = 0.3

#load data
data <- load_data()
unique_matrix <- get_unique_values(data)
unique_values <- colnames(unique_matrix)

Ck = unique_values

list_of_support_tables = list()

while (length(Ck) != 0) {
  supports_table = get_support(Ck, minimumSupport)
  list_of_support_tables = append(list_of_support_tables, list(supports_table))
  Lk = strsplit(names(supports_table), '-')
  Ck = get_combinations(Lk)
}
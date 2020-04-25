source("functions/load_data.r")
source("functions/get_unique_values.r")
source("functions/get_accepted_values.r")
source("functions/get_support_of_matrix.r")
source("functions/get_support.r")
source("functions/get_combinations.r")

minimumSupport = 0.3

#load data
data <- load_data()

#Get the Unique Matrix
unique_matrix <- get_unique_values(data)

#Get The Support Values, and the Highest Frequency Itemset
support = get_support(unique_matrix, minimumSupport)
totalAcceptedSupports = support[[1]]
lastLevelItems = support[[2]]





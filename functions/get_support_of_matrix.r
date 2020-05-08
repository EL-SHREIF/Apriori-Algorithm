
get_support_of_matrix <- function(unique_matrix, Lk_1) {
  #Vector of supports
  supports <- c()

  #Get data dimensions
  no_of_cols = 1
  no_of_rows = nrow(unique_matrix)

  #Initialize Attribute Names
  attributeNames = names(supports)

  #Get The Supports of the combinations in L(k-1)
  for (columns in Lk_1) {

    #Declare vector of ones to and with the data columns
    ans <- matrix(1, no_of_rows , no_of_cols)

    for (c in columns) {
      #ANDing the columns with each other to get the common occurences
      ans = ans * unique_matrix[, c]
    }

    #Calculate the support for each combination
    supports <- c(supports, (sum(ans[,])/no_of_rows))

    #Adding the attribute name to the value
    attributeNames <- c(attributeNames, paste(sort(columns), collapse = '-'))
    
  }
  names(supports) = attributeNames

  return(supports)
}
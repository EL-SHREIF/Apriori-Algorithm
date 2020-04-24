get_support_of_matrix <- function(data) {
    #Calculating the the data size for looping
    no_of_cols = ncol(data)
    no_of_rows = nrow(data)

    #Vector will contain the support count.
    support_values = c()
    
    #Calculate the support of each column
    for (i in 1:no_of_cols) {
    support_values <- c(support_values, (sum(data[,i])/no_of_rows))
    }

    #Map Support Values to their attributes
    names(support_values) = colnames(data)

    return(support_values)

}
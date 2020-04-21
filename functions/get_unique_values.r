get_unique_values <- function(data) {

    #Calculating the the data size for looping
    no_of_cols = ncol(data)
    no_of_rows = nrow(data)

    #Loop through the whole data and save the unique values in a vector
    unique_values = c()
    for (i in 1:no_of_cols) {
    unique_values <- c(unique_values, unique(data[,i]))
    }
    #Creating Empty Matrix of zeros
    new_no_of_cols = length(unique_values)
    data_matrix <- matrix(0, ncol = new_no_of_cols, nrow = no_of_rows)
    colnames(data_matrix) <- unique_values

    for (i in 1:no_of_rows) {
        for (j in 1:no_of_cols) {
            data_matrix[i, data[i,j]] = 1
        }
    }
    
    write.table(data_matrix,"data/unique_data.txt",append = FALSE, sep="\t", dec = ".", row.names = FALSE, col.names = TRUE)
    return (unique_data)
}
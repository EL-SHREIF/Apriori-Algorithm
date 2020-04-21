load_data <- function() {
    #Load the data to data variable 
    data = read.delim("data/ticdata2000.txt", header=FALSE, sep="\t")

    #Slice the columns we are using from column 2 to 13 
    our_data = data[,2:13]

    #Add the Columns names
    column_names = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L")
    colnames(our_data) <- column_names

    #Write the new data in data folder 
    write.table(our_data,"data/our_data.txt",append = FALSE, sep="\t", dec = ".", row.names = FALSE, col.names = TRUE)

    #Concatenate each column values with unique string
    for (c in column_names) {
        our_data[[c]] <- sub("^", c, our_data[[c]] )
    }
    write.table(our_data,"data/result_data.txt",append = FALSE, sep="\t", dec = ".", row.names = FALSE, col.names = TRUE)

    #Create Matrix of the data, 12 columns, and put them by column
    output <- matrix(unlist(our_data), ncol=12, byrow=FALSE)
    colnames(output) <- column_names
    return (output)
}


#The Real Columns name in case needed
#c("number_of_houses","avg_size_household","avg_age","customer_main_type","roman_catholic","protestant","other_religion","no_religion","married","living_together","other_religion","singles")

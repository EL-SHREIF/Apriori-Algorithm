get_support <- function(unique_matrix, minimumSupport) {

    #Get the unique values names
    unique_values <- colnames(unique_matrix)
    
    #Initial Candidate Set
    Ck = unique_values

    #Highest Frequent Items
    totalAcceptedSupports = c()

    lastLevelItems = c()



    while (length(Ck) != 0) {

        #Calculate the support of the Candidates
        supports = get_support_of_matrix(unique_matrix, Ck)

        #Vector of the accepted attributes according the minimum support
        accepted_supports = get_accepted_values(supports, minimumSupport)
        accepted_supports_names = names(accepted_supports)

        #Append Accepted Support for each level in the list
        totalAcceptedSupports <- c(totalAcceptedSupports, accepted_supports)

        #Put Last Level Items
        if (length(accepted_supports) != 0) {
            #Only if the item set is not empty replace it with the old one
            lastLevelItems = accepted_supports_names
        }
        
        
        #Get new Combinations for the next level
        Lk = strsplit(accepted_supports_names, '-')
        Ck = get_combinations(Lk)

    }
    
    #Putting two items in a list to return them
    output <- list(totalAcceptedSupports, lastLevelItems)

    return(output)
}
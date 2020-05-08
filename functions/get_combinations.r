get_combinations <- function(Lk_1) {
  
  l = length(Lk_1)
  
  if (l == 0){
    return(list())
  }
  
  # get current k
  k = length(Lk_1[[1]])
  
  if (l < k + 1){
    return(list())
  }

  # get unique 1-itemsets
  unique_items = unique(unlist(Lk_1))
  
  # create all possible combinations from the unique 1-itemsets
  Ck = combn(unique_items, k+1, simplify = FALSE)
  
  output = list()
  
  # check if the combinations are correct
  for (option in Ck){
    test = combn(option, k, simplify = FALSE)
    if (Reduce("&", test %in% Lk_1)){
      output = append(output, list(option))
    }
  }

  return (output)
}
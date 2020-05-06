translate_row_names <- function(mydata) {
  
  for (row in 1:nrow(mydata)){
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'A', 'houses_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'B', 'avg_size_household_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'C', 'avg_age_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'D', 'customer_main_type_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'E', 'roman_catholic_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'F', 'protestant_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'G', 'other_religion_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'H', 'no_religion_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'I', 'married_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'J', 'living_together_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'K', 'other_relation_')
    rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], 'L', 'singles_')
  }
  return(mydata)
}

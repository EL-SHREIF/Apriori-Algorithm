translate_row_names <- function(mydata) {
  current_names = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K")
  org_names = c('houses_', 'avg_size_household_', 'avg_age_', 'customer_main_type_',
                'roman_catholic_', 'protestant_', 'other_religion_', 'no_religion_',
                'married_', 'living_together_', 'other_relation_', 'singles_')
  
  for (row in 1:nrow(mydata)){
    for (i in 1:length(current_names)){
      rownames(mydata)[row] = str_replace_all(rownames(mydata)[row], current_names[i], org_names[i])
    }
  }
  return(mydata)
}

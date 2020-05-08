translate_row_names <- function(mydata) {
  current_names = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L")

  org_names = c("number_of_houses=",
                "avg_size_household=",
                "avg_age=",
                "customer_main_type=",
                "roman_catholic=",
                "protestant=",
                "other_religion=",
                "no_religion=",
                "married=",
                "living_together=",
                "other_religion=",
                "singles=")
  
  
  for (i in 1:length(current_names)){
     #rownames(mydata) = str_replace_all(rownames(mydata), current_names[i], org_names[i])
    rownames(mydata) = gsub(current_names[i], org_names[i], rownames(mydata))
  }

  return(mydata)
}

generate_rules <- function(last_supports){
  frequent_itemsets = strsplit(names(last_supports), '-')
  
  rules = matrix(ncol=2)
  colnames(rules) <- c("Left", "Right")
  
  for (itemset in frequent_itemsets) {
    l = length(itemset)
    for (i in 1:l) {
      lhs = combn(itemset, i, simplify = FALSE)
      rhs = lapply(lhs, function(x) itemset[!(itemset %in% x)])
      
      rule = cbind(lhs, rhs)

      rules = rbind(rules, rule)
    }
  }
  rules = rules[-1,]
  return(rules)
}
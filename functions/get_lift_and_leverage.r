get_lift_and_leverage <- function(rules, supports){
  
  lifts_leverages = matrix(ncol=2)
  colnames(lifts_leverages) = c('lift', 'leverage')
  
  for (rule in rules){
    
    left_right = strsplit(rule, split = '/')
    left = strsplit(left_right[[1]][1], split = '-')[[1]]
    right = strsplit(left_right[[1]][2], split = '-')[[1]]
    
    first = supports[paste(sort(unlist(c(left, right))), collapse = '-')]
  
    sup_left = supports[paste(sort(unlist(left)), collapse = '-')]
    sup_right = supports[paste(sort(unlist(right)), collapse = '-')]
    
    second = sup_left * sup_right
    
    lift = c(first/second)
    leverage = c(first-second)
    
    lift_leverage = cbind(lift, leverage)
    row.names(lift_leverage) = paste(c(paste(left, collapse = ', '), paste(right, collapse = ', ')), collapse = ' \u2192 ')
    
    lifts_leverages = rbind(lifts_leverages, lift_leverage)
    
  }
  lifts_leverages = lifts_leverages[-1,]
  return(lifts_leverages)
}
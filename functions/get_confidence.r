get_confidence <- function(supports, rules, minimumConfidence){
  
  #Empty vector to hold confidences
  confidences = c()
  
  # Get the number of rows of the matrix
  l = length(rules)/2
  for (i in 1:l){
    
    # get the support of the whole rule
    num = supports[paste(sort(unlist(rules[i,])), collapse = '-')]
    
    # get the support of the left hand side
    den = supports[paste(sort(unlist(rules[i, 'Left'])), collapse = '-')]
    
    # calculate the confidence
    confidence = c(num/den)
    
    # set the names of the confidence vector
    left = paste(sort(unlist(rules[i, 'Left'])), collapse = '-')
    right = paste(sort(unlist(rules[i, 'Right'])), collapse = '-')
    
    names(confidence) = paste(c(left, right), collapse = '/')
    
    # append the confidence
    confidences = c(confidences, confidence)
  }
  
  # filter confidences with minimumConfidence
  confidences = confidences[confidences > minimumConfidence]
  return(names(confidences))
}
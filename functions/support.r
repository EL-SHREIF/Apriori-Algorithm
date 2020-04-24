get_support <- function(Lk_1, min_support) {
  supports <- list()
  no_of_rows = nrow(data)
  min_support = min_support * no_of_rows
  for (columns in Lk_1) {
    ans = matrix(1, 1 , no_of_rows)
    for (c in columns) {
      ans <- ans * unique_matrix[, c]
    }
    supports[paste(columns, collapse = '-')] = sum(ans[,])
  }

  return(supports[supports > min_support])
}
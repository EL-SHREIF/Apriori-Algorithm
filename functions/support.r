get_support <- function(Lk_1, min_support) {
  supports <- matrix()
  no_of_rows = nrow(data)
  for (columns in Lk_1) {
    ans = matrix(1, 1 , no_of_rows)
    for (c in columns) {
      ans <- ans * unique_matrix[, c]
    }
    supports[columns] = sum(ans[,])
  }

  return (unlist(names(supports[supports > min_support])))
}
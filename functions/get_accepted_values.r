get_accepted_values <- function(support_values, minimumSupport) {

   accepted_values = support_values[support_values>minimumSupport]

   return (accepted_values)
}
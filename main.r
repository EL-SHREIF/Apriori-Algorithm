source("functions/load_data.r")
source("functions/get_unique_values.r")
source("functions/get_accepted_values.r")
source("functions/get_support_of_matrix.r")
source("functions/get_support.r")
source("functions/get_combinations.r")
source("functions/generate_rules.r")
source("functions/get_confidence.r")
source("functions/get_lift_and_leverage.r")
source("functions/translate_row_names.r")

minimumSupport = 0.2
minimumConfidence = 0.5

#load data
data <- load_data()

#Get the Unique Matrix
unique_matrix <- get_unique_values(data)

#Get The Support Values, and the Highest Frequency Itemset
support = get_support(unique_matrix, minimumSupport)
totalAcceptedSupports = support[[1]]
lastLevelItems = support[[2]]

#Get the assiciation rules
rules = generate_rules(lastLevelItems)

#Get Confidence values
interesting_rules = get_confidence(totalAcceptedSupports, rules, minimumConfidence)

#Calculate Lift and Leverage for the interesting rules
lifts_and_leverages = get_lift_and_leverage(interesting_rules, totalAcceptedSupports)
lifts_and_leverages = translate_row_names(lifts_and_leverages)

#Sort rules according to lift or leverage
rules_sorted_by_lift = sort(lifts_and_leverages[, 'lift'], decreasing = TRUE)
rules_sorted_by_leverage = sort(lifts_and_leverages[, 'leverage'], decreasing = TRUE)

# Write to text files
write.table(rules_sorted_by_lift, "data/lift.txt")
write.table(rules_sorted_by_leverage, "data/leverage.txt")

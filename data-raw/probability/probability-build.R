# Setup ----

# Location for the raw manipulations
data_local_location = file.path("data-raw", "probability")

## Obtain pks package
# install.packages("pks")

# Load the probability data set from pks
data(probability, package = "pks")

## Format Item Data ----

# Extract out the first set of 12 problems and their true/false coded answers.
matched_part_one_trial_response = grepl("b1[0-9]+", colnames(probability))
items_probability_part_one_full =  as.matrix(probability[, matched_part_one_trial_response])

matched_part_one_answers = grepl("p1[0-9]+", colnames(probability))
rows_without_missing_values = rowSums(is.na(probability[, matched_part_one_answers])) == 0
items_probability_part_one_reduced = as.matrix(probability[rows_without_missing_values, matched_part_one_trial_response])

rownames(items_probability_part_one_full) = probability$case
rownames(items_probability_part_one_reduced) = probability$case[rows_without_missing_values]

## Format Q Matrix Data ----
# Obtained from the {pks} package's data example.
qmatrix_probability_part_one = read.table(
  file.path(data_local_location, "probability-q-matrix-expert-mapping.txt"),
  header = TRUE)

# Convert to matrix
qmatrix_probability_part_one = as.matrix(qmatrix_probability_part_one)

# Remove first column
qmatrix_probability_part_one = qmatrix_probability_part_one[,-1]

rownames(qmatrix_probability_part_one) =
  sprintf("Item%02d", seq_len(nrow(qmatrix_probability_part_one)))

## Export data sets
usethis::use_data(items_probability_part_one_full, overwrite = TRUE)
usethis::use_data(items_probability_part_one_reduced, overwrite = TRUE)
usethis::use_data(qmatrix_probability_part_one, overwrite = TRUE)


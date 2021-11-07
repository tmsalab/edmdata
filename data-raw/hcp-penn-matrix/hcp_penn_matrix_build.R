library("tidyverse")

raw_hcp = read.csv(
  "data-raw/hcp-penn-matrix/behavioral-item-level-data-HCP-S1200-distribution+correctedNEO_2017_10_13.csv",
  na.strings = c("NA", " ", "")
)

hcp_penn_data = raw_hcp %>%
  select(subid, sex, age, handedness, matches("PMAT24A")) %>%
  mutate(across(
    matches("_corr"),
    ~ case_when(.x == "Y" ~ TRUE, .x == "N" ~ FALSE, TRUE ~ NA)
  )) %>%
  mutate(
    sex = factor(sex),
    handedness = factor(handedness),
    PMAT24A_test = factor(PMAT24A_test),
    PMAT24A_valid = factor(PMAT24A_valid)
  )

hcp_covariates = hcp_penn_data %>%
  select(subid, sex, age, handedness)

hcp_penn_items = hcp_penn_data %>%
  select(subid, matches("_corr"))

hcp_penn_items_missing = hcp_penn_data

# Fixed at 24
item_column_names = sprintf("PMAT24A.q%02d", seq_len(24))

for(i in item_column_names) {
  # Check the two columns
  active_item_correct = paste0(i, "_corr")
  active_item_response = paste0(i, "_resp")

  # Code answers as NA if response is missing...
  hcp_penn_items_missing[[active_item_correct]] =
    ifelse(
      is.na(hcp_penn_items_missing[[active_item_response]]),
      NA,
      hcp_penn_items_missing[[active_item_correct]]
    )
}

hcp_penn_items_missing = hcp_penn_items_missing %>%
  select(subid, matches("_corr"))

# Remove observations with zero correct responses.
completely_missing_id = which(rowSums(is.na(hcp_penn_items)) > 0)
# Subjects: 117728 137431 145531 236130 614439

#  Rename columns
colnames(hcp_penn_items) = gsub("PMAT24A.q([0-9]+)_corr", "\\1", colnames(hcp_penn_items))
colnames(hcp_penn_items_missing) = gsub("PMAT24A.q([0-9]+)_corr", "\\1", colnames(hcp_penn_items_missing))

# Retain only the Penn Items with full responses.
# Drop the subid
# Coerce to matrix
# Switch to logical
items_hcp_penn_matrix = as.matrix(hcp_penn_items[-completely_missing_id, -1])*1
items_hcp_penn_matrix_missing = as.matrix(hcp_penn_items_missing[-completely_missing_id, -1])*1

#  Export
usethis::use_data(items_hcp_penn_matrix, overwrite = TRUE)
usethis::use_data(items_hcp_penn_matrix_missing, overwrite = TRUE)

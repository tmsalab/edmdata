######################################
# James Joseph Balamuta
# Tatosuka Fraction Dataset Import
######################################

######## Assessment Items

# Import Assessment Items given by Culpepper
items_fractions = ecdm::read_items("data-raw/fraction/fractionsdata.txt", header = FALSE, sep = " ")

########

# Build Q Matrix
# Based off of Qest paper
qmatrix_fractions = rbind(
  c(0, 0, 0, 1, 0, 1, 1, 0),
  c(0, 0, 0, 1, 0, 0, 1, 0),
  c(0, 0, 0, 1, 0, 0, 1, 0),
  c(0, 1, 1, 0, 1, 0, 1, 0),
  c(0, 1, 0, 1, 0, 0, 1, 1),
  c(0, 0, 0, 0, 0, 0, 1, 0),
  c(1, 1, 0, 0, 0, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 1, 0),
  c(0, 1, 0, 0, 0, 0, 0, 0),
  c(0, 1, 0, 0, 1, 0, 1, 1),
  c(0, 1, 0, 0, 1, 0, 1, 0),
  c(0, 0, 0, 0, 0, 0, 1, 1),
  c(0, 1, 0, 1, 1, 0, 1, 0),
  c(0, 1, 0, 0, 0, 0, 1, 0),
  c(1, 0, 0, 0, 0, 0, 1, 0),
  c(0, 1, 0, 0, 0, 0, 1, 0),
  c(0, 1, 0, 0, 1, 0, 1, 0),
  c(0, 1, 0, 0, 1, 1, 1, 0),
  c(1, 1, 1, 0, 1, 0, 1, 0),
  c(0, 1, 1, 0, 1, 0, 1, 0)
)

# Number of Attributes
k = ncol(qmatrix_fractions)
j = nrow(qmatrix_fractions)

# Labeling
colnames(qmatrix_fractions) = sprintf(paste0("Trait%0", nchar(k), "d"), seq_len(k))
rownames(qmatrix_fractions) = sprintf(paste0("Item%0", nchar(j), "d"), seq_len(j))

# Release assessment scores
devtools::use_data(items_fractions, overwrite = TRUE)

# Release q matrix
devtools::use_data(qmatrix_fractions, overwrite = TRUE)

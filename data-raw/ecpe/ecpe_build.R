######################################
# James Joseph Balamuta
# ECPE Data Importation
######################################

# Read in data as a data.frame
items_ecpe = ecdmcore::read_items("data-raw/ecpe/ecpe_item_data.dat",
                                  header = FALSE, sep = " ", drop_columns = 1)

## The following uses the `app_tables` data file used in the E-rRUM paper
# # Extract out expert matrix
# load("data-raw/ecpe/app_tables.Rdata")
# expert_q = tab1[, c(2:4)]
#
# # Write to file
# sink("data-raw/ecpe/qmatrix_ecpe.txt")
# for(i in seq_len(nrow(expert_q))) {
#   cat(paste(expert_q[i,], collapse=" "), sep="\n")
# }
# sink()

# Read the Expert ECPE Q Matrix in
qmatrix_ecpe = ecdmcore::read_qmatrix("data-raw/ecpe/qmatrix_ecpe.txt",
                                  header = FALSE, sep = " ")

# Export data sets
devtools::use_data(items_ecpe, overwrite = TRUE)

devtools::use_data(qmatrix_ecpe, overwrite = TRUE)

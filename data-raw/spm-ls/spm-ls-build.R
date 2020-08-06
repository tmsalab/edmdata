### SPM-LS
## Last Series of the Standard Progressive Matrices: https://data.mendeley.com/datasets/h3yhs5gy3w/1#file-11272d2a-aa63-43be-8413-145b9941d2d8

data_url_location = "https://data.mendeley.com/datasets/h3yhs5gy3w/1/files/96daaa32-c8e9-40f4-b453-ada9cc6320d4/dataset.csv?dl=1"
data_local_location = "data-raw/spm-ls/dataset.csv"

# Download the zip file
download.file(data_url_location,
              data_local_location)

# Unzip and load anxiety data into R
# Note, data has a header in it!
raw_spm_ls =
  readr::read_csv(data_local_location,
                  na = c("", "NA"),
                  col_types = readr::cols(
                    SPM1 = readr::col_integer(),
                    SPM2 = readr::col_integer(),
                    SPM3 = readr::col_integer(),
                    SPM4 = readr::col_integer(),
                    SPM5 = readr::col_integer(),
                    SPM6 = readr::col_integer(),
                    SPM7 = readr::col_integer(),
                    SPM8 = readr::col_integer(),
                    SPM9 = readr::col_integer(),
                    SPM10 = readr::col_integer(),
                    SPM11 = readr::col_integer(),
                    SPM12 = readr::col_integer()
                  )
  )

# Transform to a binary matrix
transformed_spm_ls = raw_spm_ls

# Ported from the PHP used in "calculated" values
# Rules derived from Table 1 of Taylor, J. (1953). "A personality scale of manifest anxiety"
transformed_spm_ls['SPM1'] = 1*(raw_spm_ls['SPM1'] == 7)
transformed_spm_ls['SPM2'] = 1*(raw_spm_ls['SPM2'] == 6)
transformed_spm_ls['SPM3'] = 1*(raw_spm_ls['SPM3'] == 8)
transformed_spm_ls['SPM4'] = 1*(raw_spm_ls['SPM4'] == 2)
transformed_spm_ls['SPM5'] = 1*(raw_spm_ls['SPM5'] == 1)
transformed_spm_ls['SPM6'] = 1*(raw_spm_ls['SPM6'] == 5)
transformed_spm_ls['SPM7'] = 1*(raw_spm_ls['SPM7'] == 1)
transformed_spm_ls['SPM8'] = 1*(raw_spm_ls['SPM8'] == 6)
transformed_spm_ls['SPM9'] = 1*(raw_spm_ls['SPM9'] == 3)
transformed_spm_ls['SPM10'] = 1*(raw_spm_ls['SPM10'] == 2)
transformed_spm_ls['SPM11'] = 1*(raw_spm_ls['SPM11'] == 4)
transformed_spm_ls['SPM12'] = 1*(raw_spm_ls['SPM12'] == 5)

library("magrittr")

# Convert to an item matrix
# Enforce list-wise deletion.
items_spm_ls =
  transformed_spm_ls %>%
  tidyr::drop_na() %>%
  dplyr::select(dplyr::matches("SPM")) %>%
  as.matrix()

# Write the items_spm_ls
usethis::use_data(items_spm_ls, overwrite = TRUE)

# Remove the zip + csv after read in.
file.remove(data_local_location)


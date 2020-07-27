### National Center for Education Statistics
## Approaches to Learning: https://nces.ed.gov/pubsearch/pubsinfo.asp?pubid=2010070

data_url_location = "https://nces.ed.gov/pubs2010/data/2010070_atl.xls"
data_local_location = "data-raw/ecls-k-atl/2010070_atl.csv"

# Unzip and load anxiety data into R
# Note, data has a header in it!
raw_ecls_k_atl =
  readr::read_csv(data_local_location,
                  na = c("", "NA"),
                  col_types = readr::cols(
                      CHILDID = readr::col_character(),
                      P1LEARN = readr::col_double(),
                      P2LEARN = readr::col_double(),
                      P4LEARN = readr::col_double(),
                      T1LEARN = readr::col_double(),
                      T2LEARN = readr::col_double(),
                      T4LEARN = readr::col_double(),
                      T5LEARN = readr::col_double(),
                      T6LEARN = readr::col_double(),
                      P1SRS10 = readr::col_integer(),
                      P1SRS13 = readr::col_integer(),
                      P1SRS15 = readr::col_integer(),
                      P1SRS18 = readr::col_integer(),
                      P1SRS22 = readr::col_integer(),
                      P1SRS24 = readr::col_integer(),
                      P2SRS10 = readr::col_integer(),
                      P2SRS13 = readr::col_integer(),
                      P2SRS15 = readr::col_integer(),
                      P2SRS18 = readr::col_integer(),
                      P2SRS22 = readr::col_integer(),
                      P2SRS24 = readr::col_integer(),
                      P4SRS10 = readr::col_integer(),
                      P4SRS13 = readr::col_integer(),
                      P4SRS15 = readr::col_integer(),
                      P4SRS18 = readr::col_integer(),
                      P4SRS22 = readr::col_integer(),
                      P4SRS24 = readr::col_integer(),
                      T1SRS11 = readr::col_integer(),
                      T1SRS14 = readr::col_integer(),
                      T1SRS15 = readr::col_integer(),
                      T1SRS21 = readr::col_integer(),
                      T1SRS23 = readr::col_integer(),
                      T1SRS24 = readr::col_integer(),
                      T2SRS11 = readr::col_integer(),
                      T2SRS14 = readr::col_integer(),
                      T2SRS15 = readr::col_integer(),
                      T2SRS21 = readr::col_integer(),
                      T2SRS23 = readr::col_integer(),
                      T2SRS24 = readr::col_integer(),
                      T4SRS11 = readr::col_integer(),
                      T4SRS14 = readr::col_integer(),
                      T4SRS15 = readr::col_integer(),
                      T4SRS21 = readr::col_integer(),
                      T4SRS23 = readr::col_integer(),
                      T4SRS24 = readr::col_integer(),
                      T5SRS11 = readr::col_integer(),
                      T5SRS14 = readr::col_integer(),
                      T5SRS15 = readr::col_integer(),
                      T5SRS21 = readr::col_integer(),
                      T5SRS23 = readr::col_integer(),
                      T5SRS24 = readr::col_integer(),
                      T5SRS26 = readr::col_integer(),
                      G6SRS11 = readr::col_integer(),
                      G6SRS14 = readr::col_integer(),
                      G6SRS15 = readr::col_integer(),
                      G6SRS21 = readr::col_integer(),
                      G6SRS23 = readr::col_integer(),
                      G6SRS24 = readr::col_integer(),
                      G6SRS26 = readr::col_integer()
                  )
  )


## Transform responses to binary correct/incorrect. ----

# Identified desired variables
srs_p_names = paste0('P4SRS', c(10, 13, 15, 18, 22, 24))
srs_t_names = paste0('T4SRS', c(11, 14, 15, 21, 23, 24))

# Must extract columns and subtract 1 so scores go from 0 to M - 1
transformed_ecls_k_atl = raw_ecls_k_atl[, c(srs_p_names, srs_t_names)] - 1

# Obtain observations with no missing values to the selected variables
transformed_ecls_k_atl = transformed_ecls_k_atl[complete.cases(transformed_ecls_k_atl), ]

## Convert to an item matrix ----
items_ordered_eclsk_atl = as.matrix(transformed_ecls_k_atl)

# Write the matrix_reasoning item matrix
usethis::use_data(items_ordered_eclsk_atl, overwrite = TRUE)

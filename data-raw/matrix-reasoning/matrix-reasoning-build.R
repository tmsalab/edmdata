### OpenPsychometrics
## Experimental/Matrix Reasoning IQ Test: http://openpsychometrics.org/_rawdata/IQ1.zip

data_url_location = "http://openpsychometrics.org/_rawdata/IQ1.zip"
data_local_location = "data-raw/matrix-reasoning/IQ1.zip"

# Download the zip file
download.file(data_url_location,
              data_local_location)

# Unzip and load anxiety data into R
# Note, data has a header in it!
raw_eiq_test =
  readr::read_csv(unz(data_local_location, "IQ1/data.csv"),
                  na = c("", "NA"),
                  col_types = readr::cols(
                    Q1 = readr::col_integer(),
                    Q2 = readr::col_integer(),
                    Q3 = readr::col_integer(),
                    Q4 = readr::col_integer(),
                    Q5 = readr::col_integer(),
                    Q6 = readr::col_integer(),
                    Q7 = readr::col_integer(),
                    Q8 = readr::col_integer(),
                    Q9 = readr::col_integer(),
                    Q10 = readr::col_integer(),
                    Q11 = readr::col_integer(),
                    Q12 = readr::col_integer(),
                    Q13 = readr::col_integer(),
                    Q14 = readr::col_integer(),
                    Q15 = readr::col_integer(),
                    Q16 = readr::col_integer(),
                    Q17 = readr::col_integer(),
                    Q18 = readr::col_integer(),
                    Q19 = readr::col_integer(),
                    Q20 = readr::col_integer(),
                    Q21 = readr::col_integer(),
                    Q22 = readr::col_integer(),
                    Q23 = readr::col_integer(),
                    Q24 = readr::col_integer(),
                    Q25 = readr::col_integer(),
                    score = readr::col_integer(),
                    gender = readr::col_integer(),
                    age = readr::col_integer()
                  )
  )

code_correct_answer = function(x, ans = 10) {
  1*(x == ans)
}

library("magrittr")

# Transform to a binary matrix
transformed_eiq_test = raw_eiq_test %>%
  dplyr::mutate_at(dplyr::vars(dplyr::contains('Q')), code_correct_answer)

correct_rowsum = transformed_eiq_test %>%
  dplyr::select(dplyr::starts_with("Q")) %>%
  rowSums()

# Check if equivalent
stopifnot(
  isTRUE(
    all.equal(
      correct_rowsum, transformed_eiq_test$score
      )
    )
  )

# Convert to an item matrix
# Enforce list-wise deletion.
items_matrix_reasoning =
  transformed_eiq_test %>%
  dplyr::select(dplyr::matches("Q")) %>%
  as.matrix()

# Write the matrix_reasoning item matrix
usethis::use_data(items_matrix_reasoning, overwrite = TRUE)

# Remove the zip csv after read in.
file.remove(data_local_location)


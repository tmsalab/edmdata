### OpenPsychometrics
## Narcissistic Personality Inventory: http://openpsychometrics.org/_rawdata/NPI.zip

data_url_location = "http://openpsychometrics.org/_rawdata/NPI.zip"
data_local_location = "data-raw/narcissistic-personality-inventory/NPI.zip"

# Download the zip file
download.file(data_url_location,
              data_local_location)

# Unzip and load anxiety data into R
# Note, data has a header in it!
raw_npi_scale =
  readr::read_csv(unz(data_local_location, "NPI/data.csv"),
                  na = c("", "NA"),
                  col_types = cols(
                    score = readr::col_integer(),
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
                    Q26 = readr::col_integer(),
                    Q27 = readr::col_integer(),
                    Q28 = readr::col_integer(),
                    Q29 = readr::col_integer(),
                    Q30 = readr::col_integer(),
                    Q31 = readr::col_integer(),
                    Q32 = readr::col_integer(),
                    Q33 = readr::col_integer(),
                    Q34 = readr::col_integer(),
                    Q35 = readr::col_integer(),
                    Q36 = readr::col_integer(),
                    Q37 = readr::col_integer(),
                    Q38 = readr::col_integer(),
                    Q39 = readr::col_integer(),
                    Q40 = readr::col_integer(),
                    elapse = readr::col_integer(),
                    gender = readr::col_integer(),
                    age = readr::col_integer()
                  )
  )

# Transform to a binary matrix
transformed_npi_scale = raw_npi_scale

# Ported from the PHP used in "calculated" values using regex:
#
# from:
# \(\(int\) \$_POST(.*) (== [1-2])\)
#
# to:
# transformed_npi_scale\1 = 1*(raw_npi_scale\1 \2)
#
# Note: Score calculation rules were derived from
# Table 1 of Taylor, J. (1953). "A personality scale of manifest anxiety"
transformed_npi_scale['Q1'] = 1*(raw_npi_scale['Q1'] == 1)
transformed_npi_scale['Q2'] = 1*(raw_npi_scale['Q2'] == 1)
transformed_npi_scale['Q3'] = 1*(raw_npi_scale['Q3'] == 1)
transformed_npi_scale['Q4'] = 1*(raw_npi_scale['Q4'] == 2)
transformed_npi_scale['Q5'] = 1*(raw_npi_scale['Q5'] == 2)
transformed_npi_scale['Q6'] = 1*(raw_npi_scale['Q6'] == 1)
transformed_npi_scale['Q7'] = 1*(raw_npi_scale['Q7'] == 2)
transformed_npi_scale['Q8'] = 1*(raw_npi_scale['Q8'] == 1)
transformed_npi_scale['Q9'] = 1*(raw_npi_scale['Q9'] == 2)
transformed_npi_scale['Q10'] = 1*(raw_npi_scale['Q10'] == 2)
transformed_npi_scale['Q11'] = 1*(raw_npi_scale['Q11'] == 1)
transformed_npi_scale['Q12'] = 1*(raw_npi_scale['Q12'] == 1)
transformed_npi_scale['Q13'] = 1*(raw_npi_scale['Q13'] == 1)
transformed_npi_scale['Q14'] = 1*(raw_npi_scale['Q14'] == 1)
transformed_npi_scale['Q15'] = 1*(raw_npi_scale['Q15'] == 2)
transformed_npi_scale['Q16'] = 1*(raw_npi_scale['Q16'] == 1)
transformed_npi_scale['Q17'] = 1*(raw_npi_scale['Q17'] == 2)
transformed_npi_scale['Q18'] = 1*(raw_npi_scale['Q18'] == 2)
transformed_npi_scale['Q19'] = 1*(raw_npi_scale['Q19'] == 2)
transformed_npi_scale['Q20'] = 1*(raw_npi_scale['Q20'] == 2)
transformed_npi_scale['Q21'] = 1*(raw_npi_scale['Q21'] == 1)
transformed_npi_scale['Q22'] = 1*(raw_npi_scale['Q22'] == 2)
transformed_npi_scale['Q23'] = 1*(raw_npi_scale['Q23'] == 2)
transformed_npi_scale['Q24'] = 1*(raw_npi_scale['Q24'] == 1)
transformed_npi_scale['Q25'] = 1*(raw_npi_scale['Q25'] == 1)
transformed_npi_scale['Q26'] = 1*(raw_npi_scale['Q26'] == 2)
transformed_npi_scale['Q27'] = 1*(raw_npi_scale['Q27'] == 1)
transformed_npi_scale['Q28'] = 1*(raw_npi_scale['Q28'] == 2)
transformed_npi_scale['Q29'] = 1*(raw_npi_scale['Q29'] == 1)
transformed_npi_scale['Q30'] = 1*(raw_npi_scale['Q30'] == 1)
transformed_npi_scale['Q31'] = 1*(raw_npi_scale['Q31'] == 1)
transformed_npi_scale['Q32'] = 1*(raw_npi_scale['Q32'] == 2)
transformed_npi_scale['Q33'] = 1*(raw_npi_scale['Q33'] == 1)
transformed_npi_scale['Q34'] = 1*(raw_npi_scale['Q34'] == 1)
transformed_npi_scale['Q35'] = 1*(raw_npi_scale['Q35'] == 2)
transformed_npi_scale['Q36'] = 1*(raw_npi_scale['Q36'] == 1)
transformed_npi_scale['Q37'] = 1*(raw_npi_scale['Q37'] == 1)
transformed_npi_scale['Q38'] = 1*(raw_npi_scale['Q38'] == 1)
transformed_npi_scale['Q39'] = 1*(raw_npi_scale['Q39'] == 1)
transformed_npi_scale['Q40'] = 1*(raw_npi_scale['Q40'] == 2)

library("magrittr")

# Convert to an item matrix
# Enforce list-wise deletion.
items_narcissistic_personality_inventory =
  transformed_npi_scale %>%
  tidyr::drop_na() %>%
  dplyr::select(dplyr::matches("Q")) %>%
  as.matrix()

# Write the NPI item matrix
usethis::use_data(items_narcissistic_personality_inventory, overwrite = TRUE)

# Remove the zip csv after read in.
file.remove(data_local_location)


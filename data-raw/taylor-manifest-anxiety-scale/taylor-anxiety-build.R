### OpenPsychometrics
## Taylor Manifest Anxiety Scale: http://openpsychometrics.org/_rawdata/TMA.zip

data_url_location = "http://openpsychometrics.org/_rawdata/TMA.zip"
data_local_location = "data-raw/taylor-manifest-anxiety-scale/TMA.zip"

# Download the zip file
download.file(data_url_location,
              data_local_location)

# Unzip and load anxiety data into R
# Note, data has a header in it!
raw_anxiety_scale =
  readr::read_csv(unz(data_local_location, "TMA/data.csv"),
                  na = c("", "NA", "0"),
                  col_types = readr::cols(
                    score = readr::col_integer(),
                    gender = readr::col_integer(),
                    age = readr::col_integer(),
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
                    Q41 = readr::col_integer(),
                    Q42 = readr::col_integer(),
                    Q43 = readr::col_integer(),
                    Q44 = readr::col_integer(),
                    Q45 = readr::col_integer(),
                    Q46 = readr::col_integer(),
                    Q47 = readr::col_integer(),
                    Q48 = readr::col_integer(),
                    Q49 = readr::col_integer(),
                    Q50 = readr::col_integer()
                  )
  )

# Transform to a binary matrix
transformed_anxiety_scale = raw_anxiety_scale

# Ported from the PHP used in "calculated" values
# Rules derived from Table 1 of Taylor, J. (1953). "A personality scale of manifest anxiety"
transformed_anxiety_scale['Q1'] = 1*(raw_anxiety_scale['Q1'] != 1)
transformed_anxiety_scale['Q2'] = 1*(raw_anxiety_scale['Q2'] == 1)
transformed_anxiety_scale['Q3'] = 1*(raw_anxiety_scale['Q3'] != 1)
transformed_anxiety_scale['Q4'] = 1*(raw_anxiety_scale['Q4'] != 1)
transformed_anxiety_scale['Q5'] = 1*(raw_anxiety_scale['Q5'] == 1)
transformed_anxiety_scale['Q6'] = 1*(raw_anxiety_scale['Q6'] == 1)
transformed_anxiety_scale['Q7'] = 1*(raw_anxiety_scale['Q7'] == 1)
transformed_anxiety_scale['Q8'] = 1*(raw_anxiety_scale['Q8'] == 1)
transformed_anxiety_scale['Q9'] = 1*(raw_anxiety_scale['Q9'] != 1)
transformed_anxiety_scale['Q10'] = 1*(raw_anxiety_scale['Q10'] == 1)
transformed_anxiety_scale['Q11'] = 1*(raw_anxiety_scale['Q11'] == 1)
transformed_anxiety_scale['Q12'] = 1*(raw_anxiety_scale['Q12'] != 1)
transformed_anxiety_scale['Q13'] = 1*(raw_anxiety_scale['Q13'] == 1)
transformed_anxiety_scale['Q14'] = 1*(raw_anxiety_scale['Q14'] == 1)
transformed_anxiety_scale['Q15'] = 1*(raw_anxiety_scale['Q15'] != 1)
transformed_anxiety_scale['Q16'] = 1*(raw_anxiety_scale['Q16'] == 1)
transformed_anxiety_scale['Q17'] = 1*(raw_anxiety_scale['Q17'] == 1)
transformed_anxiety_scale['Q18'] = 1*(raw_anxiety_scale['Q18'] != 1)
transformed_anxiety_scale['Q19'] = 1*(raw_anxiety_scale['Q19'] == 1)
transformed_anxiety_scale['Q20'] = 1*(raw_anxiety_scale['Q20'] != 1)
transformed_anxiety_scale['Q21'] = 1*(raw_anxiety_scale['Q21'] == 1)
transformed_anxiety_scale['Q22'] = 1*(raw_anxiety_scale['Q22'] == 1)
transformed_anxiety_scale['Q23'] = 1*(raw_anxiety_scale['Q23'] == 1)
transformed_anxiety_scale['Q24'] = 1*(raw_anxiety_scale['Q24'] == 1)
transformed_anxiety_scale['Q25'] = 1*(raw_anxiety_scale['Q25'] == 1)
transformed_anxiety_scale['Q26'] = 1*(raw_anxiety_scale['Q26'] == 1)
transformed_anxiety_scale['Q27'] = 1*(raw_anxiety_scale['Q27'] == 1)
transformed_anxiety_scale['Q28'] = 1*(raw_anxiety_scale['Q28'] == 1)
transformed_anxiety_scale['Q29'] = 1*(raw_anxiety_scale['Q29'] != 1)
transformed_anxiety_scale['Q30'] = 1*(raw_anxiety_scale['Q30'] == 1)
transformed_anxiety_scale['Q31'] = 1*(raw_anxiety_scale['Q31'] == 1)
transformed_anxiety_scale['Q32'] = 1*(raw_anxiety_scale['Q32'] != 1)
transformed_anxiety_scale['Q33'] = 1*(raw_anxiety_scale['Q33'] == 1)
transformed_anxiety_scale['Q34'] = 1*(raw_anxiety_scale['Q34'] == 1)
transformed_anxiety_scale['Q35'] = 1*(raw_anxiety_scale['Q35'] == 1)
transformed_anxiety_scale['Q36'] = 1*(raw_anxiety_scale['Q36'] == 1)
transformed_anxiety_scale['Q37'] = 1*(raw_anxiety_scale['Q37'] == 1)
transformed_anxiety_scale['Q38'] = 1*(raw_anxiety_scale['Q38'] != 1)
transformed_anxiety_scale['Q39'] = 1*(raw_anxiety_scale['Q39'] == 1)
transformed_anxiety_scale['Q40'] = 1*(raw_anxiety_scale['Q40'] == 1)
transformed_anxiety_scale['Q41'] = 1*(raw_anxiety_scale['Q41'] == 1)
transformed_anxiety_scale['Q42'] = 1*(raw_anxiety_scale['Q42'] == 1)
transformed_anxiety_scale['Q43'] = 1*(raw_anxiety_scale['Q43'] == 1)
transformed_anxiety_scale['Q44'] = 1*(raw_anxiety_scale['Q44'] == 1)
transformed_anxiety_scale['Q45'] = 1*(raw_anxiety_scale['Q45'] == 1)
transformed_anxiety_scale['Q46'] = 1*(raw_anxiety_scale['Q46'] == 1)
transformed_anxiety_scale['Q47'] = 1*(raw_anxiety_scale['Q47'] == 1)
transformed_anxiety_scale['Q48'] = 1*(raw_anxiety_scale['Q48'] == 1)
transformed_anxiety_scale['Q49'] = 1*(raw_anxiety_scale['Q49'] == 1)
transformed_anxiety_scale['Q50'] = 1*(raw_anxiety_scale['Q50'] != 1)

library("magrittr")

# Convert to an item matrix
# Enforce list-wise deletion.
items_taylor_manifest_anxiety_scale =
  transformed_anxiety_scale %>%
  tidyr::drop_na() %>%
  dplyr::select(dplyr::matches("Q")) %>%
  as.matrix()

# denote_true_false = function(x) {
#   factor(x,  levels = c(1, 2), labels = c("True", "False"))
# }
#
# taylor_manifest_anxiety_scale = taylor_manifest_anxiety_scale %>%
#   dplyr::mutate_at(dplyr::vars(matches("Q")), denote_true_false)

# Write the items_taylor_manifest_anxiety_scale
usethis::use_data(items_taylor_manifest_anxiety_scale, overwrite = TRUE)

# Remove the zip + csv after read in.
file.remove(data_local_location)


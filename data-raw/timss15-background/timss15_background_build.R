### TIMSS
## Grade 8 TIMSS Student Background data: https://timssandpirls.bc.edu/timss2015/international-database/

data_url_location = "https://timssandpirls.bc.edu/timss2015/international-database/downloads/T15_G8_SPSSData_pt4.zip"
data_local_location = "data-raw/timss-vignette/T15_G8_SPSSData_pt4.zip"

# Download the zip file
# download.file(data_url_location,
#               data_local_location)

library(haven)
library(dplyr)

# Read in the data
#timssstudent =  haven::read_sav(unz(data_local_location, "T15_G8_SPSSData_pt4/BSGUSAM6.sav"))
timssstudent = haven::read_sav("data-raw/timss-vignette/T15_G8_SPSSData_pt4/BSGUSAM6.sav")

timssstudentG15names = paste0('BSBG15', c('A', 'B', 'C', 'D', 'E', 'F', 'G'))
timssstudentG16names = paste0('BSBG16', c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'))

# Must extract columns and subtract 1 so scores go from 0 to M-1
timss_student_G15_G16_data =
  timssstudent[, c(timssstudentG15names, timssstudentG16names)] - 1

# Obtain only the observations without missing data
nomiss = complete.cases(timss_student_G15_G16_data)
timss_student_samp = as.matrix(timss_student_G15_G16_data[nomiss,])

# Reverse code subset of items (G16 items)
reverse_code_x = setNames(3:0, 0:3)
timss_student_samp[, 8:16] = apply(
  timss_student_samp[, 8:16], 2,
  function(x) {
    dplyr::recode(x,!!!reverse_code_x)
  }
)

# Rename
items_ordered_timss15_background = timss_student_samp
usethis::use_data(items_ordered_timss15_background, overwrite = TRUE)

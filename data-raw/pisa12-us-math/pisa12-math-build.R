#

# See "An Illustration of Analyzing NAEP Primer Using EdSurvey to Analyze NCES Data"
# for an overview on the expected EdSurvey workflow. This is only available at:
# https://www.air.org/sites/default/files/Edsurvey.pdf

# install.packages("EdSurvey)
library("EdSurvey")

data_location = "data-raw/pisa12-us-math/db-pisa"

# Create the download directory
dir.create(data_location, recursive = TRUE)

# Download only the International (INT) database
EdSurvey::downloadPISA(data_location, 2012, "INT")
# Note, download data extracts into PISA/2012 :'(

# Read in the text files to the PISA database (~12 minutes)
# Request an R edusurvey data frame with International data for the USA
us_pisa12 = EdSurvey::readPISA(
  path = file.path(data_location, "PISA","2012"),
  database = "INT",
  countries = "usa"
)

# Identify all questions that are associated with MATH
# These questions seem to be prefixed with `pm`
#
# Details: https://www.oecd.org/pisa/pisaproducts/PISA12_cogs_codebook.pdf
pisa_columns = colnames(us_pisa12)
math_item_variables = pisa_columns[stringr::str_detect(pisa_columns, "^pm")]

# Use EdSurvey's built-in method to subset and convert to a data frame.
#
# Make sure to set `omittedLevels` to `FALSE` so that variables with special values
# (such as multiple entries or NAs)  will returned by `getData()` function
#
# Also, we set `addAttributes` as we are not seeking to use this data with
# any other function in the EduSurvey package
#
# For more details, please see: https://www.air.org/sites/default/files/EdSurvey-getData.pdf
pisa12_math = EdSurvey::getData(
  data = us_pisa12,
  varnames = c("bookid", math_item_variables),
  omittedLevels = FALSE,
  addAttributes = FALSE
)

pisa12_math = pisa12_math %>%
  arrange(desc(bookid))

# Todos:
# - Remove any question with score 2
# - Switch N/A to NA for R's data type
# - score 0 = 0, score 1 = 1, score 7 = NA (not assigned?), score 8 = 0 or NA

# Factors with length 1 (only N/A) or 5 (score of 0, 1, 2) must be removed.
factor_level_counts = purrr::map(pisa12_math, ~ length(levels(.x)))
table(unlist(factor_level_counts))
#  1  4  5
# 25 76  8

# Determine which factors have only 4 levels
# N/A, score 0, score 1, score 8 (not attempted)
factor_level_check = purrr::map_lgl(pisa12_math, ~ length(levels(.x)) %in% c(4, 13))

keep_items_with_factors = colnames(pisa12_math)[factor_level_check]

pisa12_math_fct = pisa12_math[, keep_items_with_factors]

# Force factors to integers
pisa12_math_int = purrr::map_df(pisa12_math_fct, as.integer )

# Setup a function to handle multiple value changes
modify_pisa = function(df, old_value, new_value) {
  df[df == old_value] = new_value
  df
}

# Apply conversion
pisa12_math_mod = modify_pisa(pisa12_math_int, 1, 0)
pisa12_math_mod = modify_pisa(pisa12_math_mod, 2, 1)
pisa12_math_mod = modify_pisa(pisa12_math_mod, 3, NA)
pisa12_math_mod = modify_pisa(pisa12_math_mod, 4, 0)

# Rename
items_pisa12_us_math = as.matrix(as.data.frame(pisa12_math_mod)[, -1])

# Export
usethis::use_data(items_pisa12_us_math, overwrite = TRUE)

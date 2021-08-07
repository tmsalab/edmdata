# install.packages("EdSurvey)
library("EdSurvey")

data_location = "data-raw/pisa12-math/db-pisa"

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
pisa12_math = EdSurvey::getData(
  data = us_pisa12,
  varnames = math_item_variables,
  omittedLevels = FALSE,
  addAttributes = FALSE
)

# Todos:
# - Remove any question with score 2
# - Switch N/A to NA for R's data type
# - score 0 = 0, score 1 = 1, score 7 = NA (not assigned?), score 8 = 0 or NA


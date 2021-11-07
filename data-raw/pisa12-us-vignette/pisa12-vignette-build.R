# PISA 12 US Vignette Data  ----
## PISA 12 Vignette data location: http://www.oecd.org/pisa/pisaproducts/INT_STU12_DEC03.zip

data_url_location = "http://www.oecd.org/pisa/pisaproducts/INT_STU12_DEC03.zip"
data_local_location = "data-raw/pisa12-vignette/INT_STU12_DEC03.zip"

# Download the zip file
# download.file(data_url_location,
#               data_local_location)

## Read in File ----

# Establish file pointer
pisa_int_file = file('data-raw/pisa12-us-vignette/INT_STU12_DEC03.txt')

# Read in data on a per-line basis.
# Note, file is on the order of 1.1 GB
x = readLines(con = pisa_int_file)

# View first line
x[1]

# # Skip 4 lines (not needed though...)
# x = x[-(1:4)]

# Select a set of variables by individually picking columns.
pisa12_vignette_data = data.frame(
  CNT = substr(x, 1, 3),
  ST96Q01 = substr(x, 373, 373),
  ST96Q02 = substr(x, 374, 374),
  ST96Q03 = substr(x, 375, 375),
  ST96Q05 = substr(x, 376, 376),
  ST101Q01 = substr(x, 377, 377),
  ST101Q02 = substr(x, 378, 378),
  ST101Q03 = substr(x, 379, 379),
  ST101Q05 = substr(x, 380, 380),
  ST104Q01 = substr(x, 381, 381),
  ST104Q04 = substr(x, 382, 382),
  ST104Q05 = substr(x, 383, 383),
  ST104Q06 = substr(x, 384, 384)
)

# Check dimensions
dim(pisa12_vignette_data)

## Select US Kids ----
us_respondents = which(pisa12_vignette_data$CNT == 'USA')
pisa12_us_vignette = pisa12_vignette_data[us_respondents,]

# Check new dimensions
dim(pisa12_us_vignette)
apply(pisa12_us_vignette[,-1], 2, table)

## Code missing responses ----
pisa12_us_vignette[pisa12_us_vignette == 7] = NA
pisa12_us_vignette[pisa12_us_vignette == 8] = NA
pisa12_us_vignette[pisa12_us_vignette == 9] = NA

## Reverse code responses ----
pisa12_us_vignette[] = lapply(pisa12_us_vignette, as.character)
pisa12_us_vignette[, -1] = apply(pisa12_us_vignette[, -1], 2, as.numeric)
pisa12_us_vignette[, -1] = 4 - pisa12_us_vignette[, -1]
str(pisa12_us_vignette)

## Select only observations with full responses ----
nomiss = complete.cases(pisa12_us_vignette)
pisa12_us_vignette_nomiss = pisa12_us_vignette[nomiss, -1]

dim(pisa12_us_vignette_nomiss)
dim(pisa12_us_vignette)

apply(pisa12_us_vignette[, -1], 2, table)
margtable = apply(pisa12_us_vignette_nomiss, 2, table)

## Item stems ----

itemstems = c(
  'I press every button possible to find out what is wrong',
  'I think about what might have caused the problem and what I can do to solve it',
  'I read the manual',
  'I ask a friend for help',
  'I read the zoo brochure to see if it says how to get there',
  'I study a map and work out the best route',
  'I leave it to my brother to worry about how to get there',
  'I know roughly where it is, so I suggest we just start driving',
  'I check how similar it is to other ticket machines I have used',
  'I try out all the buttons to see what happens',
  'I ask someone for help',
  'I try to find a ticket office at the station to buy a ticket'
)

anchors = c(
  'I would definitely not do this',
  'I would probably not do this',
  'I would probably do this',
  'I would definitely do this'
)

## Save and export data ----
items_ordered_pisa12_us_vignette =  as.matrix(pisa12_us_vignette_nomiss)

usethis::use_data(items_ordered_pisa12_us_vignette, overwrite = TRUE)

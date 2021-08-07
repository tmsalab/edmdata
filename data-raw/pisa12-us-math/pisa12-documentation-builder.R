## Template generation ----
template_location = file.path("man-roxygen", "var-docs-pisa12-us-math.R")
data_raw_location = file.path("data-raw", "pisa12-math")


## Process questions ----

items_with_labels = purrr::map_dfr(colnames(items_pisa12_us_math), ~searchSDF(.x, us_pisa12))
items_with_labels$Labels = gsub("MATH - ", "", items_with_labels$Labels)

## Write to documentation template ----
writeLines("#' @details
#'
#' Items alongside of the problem name:
#'",
  template_location
)

write(
  paste0("#' - `", items_with_labels$variableName,"`: ", items_with_labels$Labels, collapse = "\n"),
  template_location,
  append = TRUE
  )

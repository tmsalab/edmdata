## Template generation ----
template_location = file.path("man-roxygen", "var-docs-matrix-reasoning.R")
data_raw_location = file.path("data-raw", "matrix-reasoning")

question_ids = paste0("Q",seq_len(25))

## Write to documentation template ----
writeLines("#' @details
#'
#' Items included:",
  template_location
)

write(
  paste0("#' - `", question_ids,"`", collapse="\n"),
  template_location,
  append = TRUE
  )
